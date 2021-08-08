import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectTime extends StatefulWidget {
  SelectTime({Key? key}) : super(key: key);

  @override
  _SelectTimeState createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'Select Your ',
                style: GoogleFonts.portLligatSans(
                  textStyle: Theme
                      .of(context)
                      .textTheme
                      .headline1,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
                children: [
                  TextSpan(
                    text: 'Route',
                    style: GoogleFonts.portLligatSans(
                      textStyle: Theme
                          .of(context)
                          .textTheme
                          .headline1,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff15a29),
                    ),
                  ),
                ])),
        backgroundColor: Color(0xff231f20),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff231f20),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xfff15a29),
                        shape: StadiumBorder(),
                        minimumSize: Size.fromHeight(50),
                        shadowColor: Color(0xff000000),
                      ),
                      child: Text(
                        'Done',
                        style: GoogleFonts.portLligatSans(
                          textStyle: Theme
                              .of(context)
                              .textTheme
                              .headline1,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => SelectTime()),
                        );
                      },
                    ),
                ),
              ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfffafafa), Color(0xffdbdbdb)]),
        ),
      ),
    );
  }
}