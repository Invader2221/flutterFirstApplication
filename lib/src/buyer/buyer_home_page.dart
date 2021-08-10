import 'package:bring_it/src/buyer/available_delivery_people.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BuyerHomePage extends StatefulWidget {
  BuyerHomePage({Key? key}) : super(key: key);

  @override
  _BuyerHomePageState createState() => _BuyerHomePageState();
}

class _BuyerHomePageState extends State<BuyerHomePage> {
  Offset position = Offset(380, 0);
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(6.795547586325061, 79.94084367623412),
    zoom: 15.5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff231f20),
          leading: Builder(
            builder: (context) => IconButton(
              icon: new Icon(
                Icons.menu,
                size: 35,
                color: Color(0xfff15a29),
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.volunteer_activism,
                    color: Color(0xfff15a29),
                    size: 35.0,
                  ),
                )),
          ]),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: ListView(children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50, left: 8, right: 8, bottom: 8),
              color: Colors.transparent,
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      "assets/images/icon.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Chandana Perera\n",
                        style: GoogleFonts.portLligatSans(
                          textStyle: Theme.of(context).textTheme.headline1,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "57/6A,Liberty Park, Kesbawa",
                        style: GoogleFonts.portLligatSans(
                          textStyle: Theme.of(context).textTheme.headline1,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xfff15a29),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Divider(height: 1, thickness: 1, color: Colors.white),
            Container(
              // width: MediaQuery.of(context).size.width,
              height: 650,
              color: Colors.transparent,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Profile",
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 1, thickness: 1, color: Colors.white),
                  ListTile(
                    title: Text(
                      "Pre-Order",
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 1, thickness: 1, color: Colors.white),
                  ListTile(
                    title: Text(
                      "History",
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 1, thickness: 1, color: Colors.white),
                  ListTile(
                    title: Text(
                      "Rates",
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(height: 1, thickness: 1, color: Colors.white),
                  // Divider(),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Color(0xffb2b2b2),
                        child: ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Settings",
                            style: GoogleFonts.portLligatSans(
                              textStyle: Theme.of(context).textTheme.headline1,
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff231f20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 132, vertical: 10),
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
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xff000000),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AvailableDeliveryPeople()),
              );
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
              left: position.dx,
              top: position.dy,
              child: Draggable(
                  feedback: Container(
                      child: FloatingActionButton(
                          child: Icon(Icons.doorbell_outlined,size: 20,), onPressed: () {})),
                  child: Container(
                    child: FloatingActionButton(
                        child: Icon(Icons.doorbell_outlined, size: 30,), onPressed: () {}),
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
          // Positioned(
          //     bottom: 50,
          //     right: 50,
          //     child: Padding(
          //       padding: const EdgeInsets.all(160.0),
          //       child: Container(
          //           alignment: Alignment.center,
          //           color: Colors.redAccent,
          //           child: Text('Hello')),
          //     )),
        ],
      ),
    );
  }
}
