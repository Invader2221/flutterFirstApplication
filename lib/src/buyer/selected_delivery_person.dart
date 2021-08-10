import 'package:bring_it/src/buyer/buyer_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedDeliveryPerson extends StatefulWidget {
  SelectedDeliveryPerson({Key? key}) : super(key: key);

  @override
  _SelectedDeliveryPersonState createState() => _SelectedDeliveryPersonState();
}

class _SelectedDeliveryPersonState extends State<SelectedDeliveryPerson> {
  int _itemCount = 0;

  Widget _itemName() {
    return Container(
      child: Text(
        'Items',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _item() {
    return DropdownButton<String>(
      hint: Text(
        'Egg',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Color(0xfff15a29),
        ),
      ),
      items: <String>[].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }

  Widget _priceName() {
    return Container(
      child: Text(
        'Price',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _price() {
    return Container(
      child: Text(
        '15',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Color(0xfff15a29),
        ),
      ),
    );
  }

  Widget _availableQTYName() {
    return Container(
      child: Text(
        'Available Qty',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _availableQTY() {
    return Container(
      child: Text(
        '35',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Color(0xfff15a29),
        ),
      ),
    );
  }

  Widget _orderQTYName() {
    return Container(
      child: Text(
        'Order Qty',
        style: GoogleFonts.portLligatSans(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _orderQTY() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //Center Column contents vertically,
      crossAxisAlignment: CrossAxisAlignment.center,
      //Center Column contents horizontally,
      children: [
        _itemCount != 0
            ? new IconButton(
                color: Color(0xfff15a29),
                iconSize: 50,
                icon: new Icon(Icons.remove),
                onPressed: () => setState(() => _itemCount--),
              )
            : new Container(),
        new Text(
          _itemCount.toString(),
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 35,
            fontWeight: FontWeight.w700,
            color: Color(0xfff15a29),
          ),
        ),
        new IconButton(
            color: Color(0xfff15a29),
            iconSize: 50,
            icon: new Icon(Icons.add),
            onPressed: () => setState(() => _itemCount++))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage("assets/images/icon.png"),
                      height: 90.0,
                      width: 90.0,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: RichText(
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
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconTheme(
                      data: new IconThemeData(color: Color(0xfff15a29)),
                      child: new Icon(
                        Icons.star,
                        size: 60,
                      ),
                    ),
                  ),
                ],
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffdbdbdb),
        elevation: 0,
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
              'Order Now',
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xff000000),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BuyerHomePage()),
              );
            },
          ),
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
              colors: [Color(0xfffafafa), Color(0xffdbdbdb)]),
        ),
        child: Center(
          child: Column(
            children: [
              Divider(height: 1, thickness: 5, color: Colors.black),
              SizedBox(height: 30),
              _itemName(),
              _item(),
              SizedBox(height: 20),
              _priceName(),
              _price(),
              SizedBox(height: 20),
              _availableQTYName(),
              _availableQTY(),
              SizedBox(height: 20),
              _orderQTYName(),
              _orderQTY(),
            ],
          ),
        ),
      ),
    );
  }
}
