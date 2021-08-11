import 'package:bring_it/src/delivery_person/accept_pending_tabs_page.dart';
import 'package:flutter/material.dart';

class Themes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // canvasColor: Colors.green,
          accentColor: Color(0xfff15a29),
          // backgroundColor: Colors.red,
          // brightness: Brightness.dark
      ),
      initialRoute: 'Accepted',
      debugShowCheckedModeBanner: false,
      routes: {
        'Accepted': (context) => AcceptPendingTabsPage(),
      },
    );
  }
}
