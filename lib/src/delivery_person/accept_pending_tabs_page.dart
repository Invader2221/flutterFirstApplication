import 'package:bring_it/src/Tabs/accepted.dart';
import 'package:bring_it/src/Tabs/pending.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptPendingTabsPage extends StatefulWidget {
  @override
  _AcceptPendingTabsPageState createState() => _AcceptPendingTabsPageState();
}

class _AcceptPendingTabsPageState extends State<AcceptPendingTabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 90,
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff231f20),
            title: Container(
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BubbleTabIndicator(
                  indicatorHeight: 90.0,
                  indicatorRadius: 0,
                  indicatorColor: Color(0xfff15a29),
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  // Other flags
                  // indicatorRadius: 1,
                  // insets: EdgeInsets.all(1),
                  // padding: EdgeInsets.all(10)
                ),
                tabs: [
                  Tab(
                    child: Text(
                      'Accepted',
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    icon: Icon(Icons.assignment_turned_in_rounded,
                        color: Colors.white),
                  ),
                  Tab(
                    child: Text(
                      'Pending',
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    icon: Icon(Icons.assignment_late, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Accepted(),
              Pending(),
            ],
          )),
    );
  }
}
