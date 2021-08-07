import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bring_it/src/delivery_person/deliveryPersonLogin.dart';

import 'buyer/buyerLogin.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String title = "test";

  // void deliver() => Navigator(context, SignUpPage());

  Widget _buyerButton() {
    return Container(
      width: 275,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xfff15a29),
          shape: StadiumBorder(),
          minimumSize: Size.fromHeight(50),
          shadowColor: Color(0xff0c0c0c),
        ),
        child: Text(
          'Register as a buyer',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 27,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => BuyerLoginPage()),
          );
        },
      ),
    );
  }

  Widget _deliveryPersonButton() {
    return Container(
      width: 400,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xfff15a29),
          shape: StadiumBorder(),
          minimumSize: Size.fromHeight(50),
          shadowColor: Color(0xff0c0c0c),
        ),
        child: Text(
          'Register as a delivery person',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 27,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DeliveryPersonLoginPage()),
          );
        },
      ),
    );
  }

  Widget _icon() {
    return Container(
      child: Center(
        child: Image.asset(
          'assets/images/icon.png',
          width: MediaQuery.of(context).size.width * .4,
        ),
      ),
    );
  }

  Widget _title1() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'I want to buy',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Color(0xff000000),
        ),
      ),
    );
  }

  Widget _title2() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'I want to deliver',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Color(0xff000000),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: Text(title),
        centerTitle: true,
        actions: [
          PopupPotionMenu(),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.transparent,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xfffafafa), Color(0xffdbdbdb)]
              ),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              _icon(),
              SizedBox(
                height: 140,
              ),
              _title1(),
              SizedBox(
                height: 10,
              ),
              _buyerButton(),
              SizedBox(
                height: 60,
              ),
              _title2(),
              SizedBox(
                height: 10,
              ),
              _deliveryPersonButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum MenuOption { English, Sinhala, Tamil }

class PopupPotionMenu extends StatelessWidget {
  const PopupPotionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text('English'),
            value: MenuOption.English,
          ),
          PopupMenuItem(
            child: Text('සිංහල'),
            value: MenuOption.Sinhala,
          ),
          PopupMenuItem(
            child: Text('தமிழ்'),
            value: MenuOption.Tamil,
          ),
        ];
      },
    );
  }
}
