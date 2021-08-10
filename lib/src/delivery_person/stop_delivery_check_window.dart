import 'package:bring_it/src/delivery_person/deliver_start_page.dart';
import 'package:bring_it/src/delivery_person/delivery_person_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StopDeliveryCheckWindow extends StatefulWidget {
  StopDeliveryCheckWindow({Key? key}) : super(key: key);

  @override
  _StopDeliveryCheckWindowState createState() =>
      _StopDeliveryCheckWindowState();
}

class _StopDeliveryCheckWindowState extends State<StopDeliveryCheckWindow> {
  @override
  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Are you sure\n  you want to\n',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: Color(0xfff15a29),
          ),
          children: [
            TextSpan(
              text: 'Stop Delivery',
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
        automaticallyImplyLeading: false,
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
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffdbdbdb),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 90),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xfff15a29),
                      shape: StadiumBorder(),
                      minimumSize: Size.fromHeight(60),
                      shadowColor: Color(0xff000000),
                    ),
                    child: Text(
                      'No',
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DeliverStartPage()),
                      );
                    },
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xfff15a29),
                      shape: StadiumBorder(),
                      minimumSize: Size.fromHeight(60),
                      shadowColor: Color(0xff000000),
                    ),
                    child: Text(
                      'Yes',
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DeliveryPersonHomePage()),
                      );
                    },
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
