import 'dart:async';
import 'package:bring_it/src/buyer/buyerLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyerSuccessMessage extends StatelessWidget {
  const BuyerSuccessMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _BuyerSuccessSplash(),
    );
  }
}

class _BuyerSuccessSplash extends StatefulWidget {
  const _BuyerSuccessSplash({Key? key}) : super(key: key);

  @override
  _BuyerSuccessSplashState createState() => _BuyerSuccessSplashState();
}

class _BuyerSuccessSplashState extends State<_BuyerSuccessSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 20), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BuyerLoginPage()));
    });
  }

  Widget _title2() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'You are Successfully \nregistered as a \n',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: Color(0xfff15a29),
          ),
          children: [
            TextSpan(
              text: 'Buyer',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/icon.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        // title: Image.asset('assets/images/icon.png', height: 150, width: 150,),
        backgroundColor: Color(0xffdbdbdb),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(190),
          child: SizedBox(
            height: 200,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffdbdbdb),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 90),
          child: Text('Your registration \nNo is :B0001',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.headline1,
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Color(0xff050505),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      backgroundColor: Color(0xff231f20),
      body: Center(
        child: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      _title2(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
