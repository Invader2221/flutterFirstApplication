import 'package:bring_it/src/delivery_person/select_time.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SelectYourRoute extends StatefulWidget {
  SelectYourRoute({Key? key}) : super(key: key);

  @override
  _SelectYourRouteState createState() => _SelectYourRouteState();
}

class _SelectYourRouteState extends State<SelectYourRoute> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(6.795547586325061, 79.94084367623412),
    zoom: 15.5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'Select Your ',
                style: GoogleFonts.portLligatSans(
                  textStyle: Theme.of(context).textTheme.headline1,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
                children: [
                  TextSpan(
                    text: 'Route',
                    style: GoogleFonts.portLligatSans(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff15a29),
                    ),
                  ),
                ])),
        backgroundColor: Color(0xff231f20),
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
        child: GoogleMap(
          myLocationButtonEnabled: false,
          zoomControlsEnabled: true,
          initialCameraPosition: _initialCameraPosition,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff231f20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                      )),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 45,
                  ),
                ),
                onTap: () {},
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                width: 190,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff15a29),
                    shape: StadiumBorder(),
                    minimumSize: Size.fromHeight(60),
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
                      MaterialPageRoute(builder: (context) => SelectTime()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
