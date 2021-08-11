import 'package:bring_it/src/Tabs/pending_tab_designer.dart';
import 'package:flutter/material.dart';

class Pending extends StatefulWidget {
  Pending({Key? key}) : super(key: key);

  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  // List<Item> _books = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: PendingTabDesigner(),
        ),
      ),
    );
  }
}