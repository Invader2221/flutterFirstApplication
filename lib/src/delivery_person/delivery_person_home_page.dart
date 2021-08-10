import 'package:bring_it/src/delivery_person/deliver_start_page.dart';
import 'package:bring_it/src/delivery_person/food_item_table.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'deliverPersonSuccessfulMessage.dart';

class DeliveryPersonHomePage extends StatefulWidget {
  DeliveryPersonHomePage({Key? key}) : super(key: key);

  @override
  _DeliveryPersonHomePageState createState() => _DeliveryPersonHomePageState();
}

class _DeliveryPersonHomePageState extends State<DeliveryPersonHomePage> {
  Offset position = Offset(380, 0);

  Widget _deliveryPersonButton() {
    return Center(
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xfff15a29),
            shape: CircleBorder(),
            minimumSize: Size.fromRadius(90),
            shadowColor: Color(0xff000000),
          ),
          child: Text(
            ' Update\non hand\n    Qty',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.headline1,
              fontSize: 27,
              fontWeight: FontWeight.w900,
              color: Color(0xff000000),
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => FoodItemTable()),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
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
                padding: EdgeInsets.only(right: 15.0),
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
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
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                _deliveryPersonButton(),
                Positioned(
                  left: position.dx,
                  top: position.dy,
                  child: Draggable(
                      feedback: Container(
                          child: FloatingActionButton(
                              child: Icon(
                                Icons.doorbell_outlined,
                                size: 40,
                              ),
                              onPressed: () {})),
                      child: Container(
                        child: FloatingActionButton(
                            child: Icon(
                              Icons.doorbell_outlined,
                              size: 40,
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
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff231f20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 132, vertical: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: StadiumBorder(),
              shadowColor: Color(0xff000000),
            ),
            child: Text(
              'Start',
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: Color(0xfff15a29),
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
    );
  }
}
