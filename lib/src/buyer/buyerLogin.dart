import 'dart:ui';

import 'package:bring_it/src/buyer/buyerSuccessfulMessage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/bezierContainer.dart';

class BuyerLoginPage extends StatefulWidget {
  // LoginPage({Key key, this.title}) : super(key: key);
  //
  // final String title;

  @override
  _BuyerLoginPageState createState() => _BuyerLoginPageState();
}

class _BuyerLoginPageState extends State<BuyerLoginPage> {
  DateTime date = DateTime.now();

  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1949),
        lastDate: date);
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
        print(date.toString());
      });
    }
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
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

  Widget _userInputWidget() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                // hintText: "Enter your Name",
                labelText: "  Name",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                border: InputBorder.none,
                fillColor: Color(0xffb2b2b2),
                filled: true,
                suffixIcon: Icon(Icons.adjust)),
            keyboardType: TextInputType.name,
            obscureText: false,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                // hintText: "Enter your Name",
                labelText: "  Phone Number",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                border: InputBorder.none,
                fillColor: Color(0xffb2b2b2),
                filled: true,
                suffixIcon: Icon(Icons.adjust)),
            keyboardType: TextInputType.number,
            obscureText: false,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                // hintText: "Enter your Name",
                labelText: "  Email",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                border: InputBorder.none,
                fillColor: Color(0xffb2b2b2),
                filled: true),
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
          ),
        ],
      ),
    );
  }

  Widget _title1() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Your Birthday',
          style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.headline6,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000)),
        ),
      )),
    );
  }

  Widget _buyerBirthday() {
    return Container(
      width: 240,
      child: Column(
        children: [
          Text(
            "${date.day.toString()} . ${date.month.toString()} . ${date.year.toString()}",
            style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline6,
                backgroundColor: Color(0xffb2b2b2),
                decoration: TextDecoration.combine([
                  TextDecoration.underline,
                  TextDecoration.overline
                ]),
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Color(0xff000000)),
          ),
          ElevatedButton(
            child: Text(
              "Select birthday",
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xff000000),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xfff15a29),
              shape: StadiumBorder(),
              minimumSize: Size.fromHeight(45),
              shadowColor: Color(0xff000000),
            ),
            onPressed: () {
              selectTimePicker(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff231f20),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 132, vertical: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xfff15a29),
              shape: StadiumBorder(),
              minimumSize: Size.fromHeight(40),
              shadowColor: Color(0xff000000),
            ),
            child: Text(
              'Done',
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xff000000),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BuyerSuccessMessage()),
              );
            },
          ),
        ),
      ),
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: BezierContainer()),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: height * .05),
                    _icon(),
                    SizedBox(height: 20),
                    _userInputWidget(),
                    _title1(),
                    _buyerBirthday(),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
