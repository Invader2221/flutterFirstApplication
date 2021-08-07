import 'package:bring_it/src/buyer/buyerSuccessfulMessage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/bezierContainer.dart';

class DeliveryPersonLoginPage extends StatefulWidget {
  @override
  _DeliveryPersonLoginPageState createState() =>
      _DeliveryPersonLoginPageState();
}

class _DeliveryPersonLoginPageState extends State<DeliveryPersonLoginPage> {
  bool isEnabled1 = false;
  bool isEnabled2 = false;

  nicAndDrivingLicence() {
    setState(() {
      isEnabled1 = true;
      isEnabled2 = true;
    });
  }

  vehicleNumber() {
    setState(() {
      isEnabled1 = true;
      isEnabled2 = false;
    });
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
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
                labelText: "  User Name",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                border: InputBorder.none,
                fillColor: Color(0xffb2b2b2),
                filled: true,
                suffixIcon: Icon(Icons.adjust)),
            keyboardType: TextInputType.name,
            obscureText: false,
          ),
        ],
      ),
    );
  }

  Widget _buttonNoOne() {
    return Container(
      width: 220,
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xffb2b2b2),
          minimumSize: Size.fromHeight(100),
          shadowColor: Color(0xff0c0c0c),
        ),
        child: Text(
          '1',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 55,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
        onPressed: isEnabled1 ? () => sampleFunction() : null,
      ),
    );
  }

  Widget _buttonNoTwo() {
    return Container(
      width: 220,
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xffb2b2b2),
          minimumSize: Size.fromHeight(100),
          shadowColor: Color(0xff0c0c0c),
        ),
        child: Text(
          '2',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 55,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
        onPressed: isEnabled2 ? () => sampleFunction() : null,
      ),
    );
  }

  Widget _nicButton() {
    return Container(
      width: 73,
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff231f20),
          minimumSize: Size.fromHeight(50),
          shadowColor: Color(0xff0c0c0c),
          shape: StadiumBorder(),
        ),
        child: Text(
          'N.I.C',
          textAlign: TextAlign.left,
        ),
        onPressed: nicAndDrivingLicence,
      ),
    );
  }

  Widget _drivingLicenceButton() {
    return Container(
      width: 156,
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff231f20),
          minimumSize: Size.fromHeight(50),
          shadowColor: Color(0xff0c0c0c),
          shape: StadiumBorder(),
        ),
        child: Text(
          'Driving Licence',
          textAlign: TextAlign.left,
        ),
        onPressed: nicAndDrivingLicence,
      ),
    );
  }

  Widget _vehicleNumberButton() {
    return Container(
      width: 160,
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff231f20),
          minimumSize: Size.fromHeight(50),
          shadowColor: Color(0xff0c0c0c),
          shape: StadiumBorder(),
        ),
        child: Text(
          'Vehicle Number',
          textAlign: TextAlign.left,
        ),
        onPressed: vehicleNumber,
      ),
    );
  }

  sampleFunction() {
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Color(0xffdbdbdb),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff231f20),
                    shape: StadiumBorder(),
                    minimumSize: Size.fromHeight(60),
                    shadowColor: Color(0xff000000),
                  ),
                  child: Text(
                    'Your Photo',
                    textAlign: TextAlign.left,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => BuyerSuccessMessage()),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      MaterialPageRoute(
                          builder: (context) => BuyerSuccessMessage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
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
              colors: [Color(0xfffafafa), Color(0xffdbdbdb)]
          ),
        ),
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer(),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 0,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: height * .02),
                            _icon(),
                            SizedBox(height: 20),
                            _userInputWidget(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 5, 10),
                              child: Container(
                                color: Color(0xffb2b2b2),
                                height: 200,
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    SizedBox(height: 60),
                                    Icon(Icons.camera_alt,
                                        size: 90, color: Colors.black),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 0, 25, 10),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          _buttonNoOne(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 0, 25, 10),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          _buttonNoTwo(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 10),
                                  _nicButton(),
                                  SizedBox(width: 5),
                                  _drivingLicenceButton(),
                                  SizedBox(width: 5),
                                  _vehicleNumberButton(),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
