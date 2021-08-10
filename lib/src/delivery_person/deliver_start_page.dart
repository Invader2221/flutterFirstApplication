import 'package:bring_it/src/delivery_person/delivery_person_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DeliverStartPage extends StatefulWidget {
  DeliverStartPage({Key? key}) : super(key: key);

  @override
  _DeliverStartPageState createState() => _DeliverStartPageState();
}

class _DeliverStartPageState extends State<DeliverStartPage> {
  Offset position = Offset(380, 80);
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(6.795547586325061, 79.94084367623412),
    zoom: 15.5,
  );

  Widget _stopDeliveryButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 120.0, right: 120.0, top: 30.0),
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 0,
            shape: StadiumBorder(),
            side: BorderSide(color: Color(0xfff15a29), style: BorderStyle.solid, width: 5),
            minimumSize: Size.fromHeight(50),
            shadowColor: Color(0xfff15a29),
          ),
          child: Text(
            'Stop Delivery',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.headline1,
              fontSize: 27,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DeliveryPersonHomePage()),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff231f20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 132, vertical: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: StadiumBorder(),
              minimumSize: Size.fromHeight(50),
              shadowColor: Color(0xff000000),
            ),
            child: Text(
              'Done',
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 45,
                fontWeight: FontWeight.w900,
                color: Color(0xfff15a29),
              ),
            ),
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => AvailableDeliveryPeople()),
              // );
            },
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            zoomControlsEnabled: true,
            initialCameraPosition: _initialCameraPosition,
          ),
          Positioned(
            top: 0.0,
            right: 0.0,
            left: 0.0,
            child: _stopDeliveryButton(),
          ),
          Positioned(
            left: position.dx,
            top: position.dy,
            child: Draggable(
                feedback: Container(
                    child: FloatingActionButton(
                        child: Icon(
                          Icons.doorbell_outlined,
                          size: 20,
                        ),
                        onPressed: () {})),
                child: Container(
                  child: FloatingActionButton(
                      child: Icon(
                        Icons.doorbell_outlined,
                        size: 30,
                      ),
                      onPressed: () {}),
                ),
                childWhenDragging: Container(),
                onDragEnd: (details) {
                  setState(() {
                    position = details.offset;
                  });
                  print(position);
                  print(position.dx);
                  print(position.dy);
                }),
          ),
        ],
      ),
    );
  }
}