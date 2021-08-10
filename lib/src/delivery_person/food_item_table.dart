import 'package:bring_it/src/delivery_person/delivery_person_home_page.dart';
import 'package:editable/editable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodItemTable extends StatefulWidget {
  FoodItemTable({Key? key}) : super(key: key);

  @override
  _FoodItemTableState createState() => _FoodItemTableState();
}

class _FoodItemTableState extends State<FoodItemTable> {
  final _editableKey = GlobalKey<EditableState>();

  List rows = [
    {
      "Item": 'Bread',
      "Price": '20',
      "onHandQty": '07',
    },
    {
      "Item": 'Bread',
      "Price": '20',
      "onHandQty": '07',
    },
    {
      "Item": 'Bun',
      "Price": '30',
      "onHandQty": '07',
    },
  ];
  List cols = [
    {"title": 'Item', 'widthFactor': 0.4, 'key': 'Item', 'editable': true},
    {"title": 'Price', 'widthFactor': 0.3, 'key': 'Price'},
    {"title": 'On hand\nQty', 'widthFactor': 0.3, 'key': 'onHandQty'},
  ];

  void _addNewRow() {
    setState(() {
      _editableKey.currentState!.createRow();
    });
  }

  void _printEditedRows() {
    List editedRows = _editableKey.currentState!.editedRows;
    print(editedRows);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xfffafafa), Color(0xffdbdbdb)]),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Editable(
                key: _editableKey,
                columns: cols,
                rows: rows,
                zebraStripe: false,
                stripeColor1: Colors.red,
                stripeColor2: Colors.blueAccent,
                onRowSaved: (value) {
                  print(value);
                },
                onSubmitted: (value) {
                  print(value);
                },
                borderColor: Color(0xff606060),
                tdStyle: GoogleFonts.portLligatSans(
                  textStyle: Theme.of(context).textTheme.headline1,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
                trHeight: 70,
                thStyle: GoogleFonts.portLligatSans(
                  textStyle: Theme.of(context).textTheme.headline1,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  backgroundColor: Color(0xff231f20),

                ),
                thAlignment: TextAlign.center,
                thVertAlignment: CrossAxisAlignment.end,
                thPaddingBottom: 3,
                showSaveIcon: false,
                saveIconColor: Colors.black,
                showCreateButton: false,
                tdAlignment: TextAlign.left,
                tdEditableMaxLines: 100,
                // don't limit and allow data to wrap
                tdPaddingTop: 0,
                tdPaddingBottom: 14,
                tdPaddingLeft: 10,
                tdPaddingRight: 8,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfff15a29)),
                    borderRadius: BorderRadius.all(Radius.circular(0))),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff231f20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                width: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffdbdbdb),
                    shape: StadiumBorder(),
                    minimumSize: Size.fromHeight(50),
                    shadowColor: Color(0xff000000),
                  ),
                  child: Text(
                    'New Item',
                    style: GoogleFonts.portLligatSans(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                  onPressed: () {
                    _addNewRow();
                    _printEditedRows();
                  },
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                width: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff15a29),
                    shape: StadiumBorder(),
                    minimumSize: Size.fromHeight(50),
                    shadowColor: Color(0xff000000),
                  ),
                  child: Text(
                    'Save',
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
    );
  }
}