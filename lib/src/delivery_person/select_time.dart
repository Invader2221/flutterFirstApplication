import 'package:bring_it/src/delivery_person/deliverPersonSuccessfulMessage.dart';
import 'package:bring_it/src/delivery_person/deliveryPersonLogin.dart';
import 'package:bring_it/src/delivery_person/delivery_person_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class SelectTime extends StatefulWidget {
  SelectTime({Key? key}) : super(key: key);

  @override
  _SelectTimeState createState() => _SelectTimeState();
}

class Morning {
  final int id;
  final String time;

  Morning({
    required this.id,
    required this.time,
  });
}

class _SelectTimeState extends State<SelectTime> {
  static List<Morning> _morning = [
    Morning(id: 1, time: "6.00-7.00"),
    Morning(id: 2, time: "7.00-8.00"),
    Morning(id: 3, time: "8.00-9.00"),
    Morning(id: 4, time: "9.00-10.00"),
  ];

  static List<Morning> _evening = [
    Morning(id: 1, time: "4.00-5.00"),
    Morning(id: 2, time: "5.00-6.00"),
    Morning(id: 3, time: "6.00-7.00"),
    Morning(id: 4, time: "7.00-8.00"),
  ];

  final _item1 = _morning
      .map((morning) => MultiSelectItem<Morning>(morning, morning.time))
      .toList();
  List<Object?> _selectedMorningTime = [];

  final _item2 = _evening
      .map((evening) => MultiSelectItem<Morning>(evening, evening.time))
      .toList();
  List<Object?> _selectedEveningTime = [];

  @override
  void initState() {
    _selectedMorningTime = _morning;
    _selectedEveningTime = _evening;
    super.initState();
  }

  Widget _dropDownMorning() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: MultiSelectDialogField(
        items: _item1,
        title: Text("Morning"),
        selectedColor: Colors.black,
        decoration: BoxDecoration(
          color: Color(0xfff15a29),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        buttonIcon: Icon(
          Icons.arrow_drop_down_circle_outlined,
          color: Colors.black,
          size: 40,
        ),
        buttonText: Text(
          "Morning",
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        onConfirm: (val) {
          _selectedMorningTime = val;
        },
        initialValue: [null],
      ),
    );
  }

  Widget _dropDownEvening() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: MultiSelectDialogField(
        items: _item2,
        title: Text("Evening"),
        selectedColor: Colors.black,
        decoration: BoxDecoration(
          color: Color(0xfff15a29),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        buttonIcon: Icon(
          Icons.arrow_drop_down_circle_outlined,
          color: Colors.black,
          size: 40,
        ),
        buttonText: Text(
          "Evening",
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        onConfirm: (val) {
          _selectedEveningTime = val;
        },
        initialValue: [null],
      ),
    );
  }

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
                    text: 'Time',
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
                  MaterialPageRoute(
                      builder: (context) => DeliveryPersonHomePage()),
                );


                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //       builder: (context) => DeliveryPersonSuccessMessage()),
                // );
              },
            ),
        ),
      ),
      body: Center(
        child: Container(

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _dropDownMorning(),
              _dropDownEvening(),
            ],
          ),
        ),
      ),
    );
  }
}
