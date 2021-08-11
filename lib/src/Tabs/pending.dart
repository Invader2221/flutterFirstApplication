import 'package:flutter/material.dart';

class Pending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          "Pending",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
