import 'dart:async';
import 'package:bring_it/src/delivery_person/deliveryPersonLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryPersonSuccessMessage extends StatelessWidget {
  const DeliveryPersonSuccessMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _DeliveryPersonSuccessSplash(),
    );
  }
}

class _DeliveryPersonSuccessSplash extends StatefulWidget {
  const _DeliveryPersonSuccessSplash({Key? key}) : super(key: key);

  @override
  _DeliveryPersonSuccessSplashState createState() => _DeliveryPersonSuccessSplashState();
}

class _DeliveryPersonSuccessSplashState extends State<_DeliveryPersonSuccessSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DeliveryPersonLoginPage()));
    });
  }

  Widget _title() {
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
              text: 'Delivery Person',
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
          child: Text('Your registration \nNo is :D0001',
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
                      _title(),
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
