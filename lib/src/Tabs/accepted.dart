import 'package:bring_it/src/Tabs/accepted_tab_designer.dart';
import 'package:flutter/material.dart';

class Accepted extends StatefulWidget {
  Accepted({Key? key}) : super(key: key);

  @override
  _AcceptedState createState() => _AcceptedState();
}

class _AcceptedState extends State<Accepted> {
  // List<Item> _books = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: AcceptedTabDesigner(),
        ),
      ),
    );
  }
}