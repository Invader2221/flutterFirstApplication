import 'package:bring_it/src/buyer/selected_delivery_person.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableDeliveryPeople extends StatefulWidget {
  AvailableDeliveryPeople({Key? key}) : super(key: key);

  @override
  _AvailableDeliveryPeopleState createState() =>
      _AvailableDeliveryPeopleState();
}

class _AvailableDeliveryPeopleState extends State<AvailableDeliveryPeople> {


  Widget _availableDeliveryPersonButton() {
    return Container(
      height: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          minimumSize: Size.fromHeight(50),
          shadowColor: Color(0xff0c0c0c),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image(
                    image: AssetImage("assets/images/icon.png"), height: 90.0,width: 90.0,),
              ),
              Expanded(
                  flex: 5,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Viki Farm\n",
                            style: GoogleFonts.portLligatSans(
                              textStyle: Theme.of(context).textTheme.headline1,
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: "Vikramasiri Abenayake",
                            style: GoogleFonts.portLligatSans(
                              textStyle: Theme.of(context).textTheme.headline1,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xfff15a29),
                            ),
                          ),
                        ]),
                      ),
                  ),),
              Expanded(
                flex: 1,
                child: IconTheme(
                  data: new IconThemeData(
                      color: Color(0xfff15a29)),
                  child: new Icon(Icons.keyboard_arrow_down, size: 60,),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SelectedDeliveryPerson()),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Current Available\n ',
                    style: GoogleFonts.portLligatSans(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff15a29),
                    ),
                    children: [
                      TextSpan(
                        text: 'Deliver People',
                        style: GoogleFonts.portLligatSans(
                          textStyle: Theme.of(context).textTheme.headline1,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ])),
          ),
        ),
        backgroundColor: Color(0xff231f20),
      ),
      body: Container(
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
              colors: [Color(0xfffafafa), Color(0xffdbdbdb)]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Divider(height: 1, thickness: 1, color: Colors.black),
            _availableDeliveryPersonButton(),
            Divider(height: 1, thickness: 1, color: Colors.black),
            SizedBox(height: 80),
            Divider(height: 1, thickness: 1, color: Colors.black),
            SizedBox(height: 80),
            Divider(height: 1, thickness: 1, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
