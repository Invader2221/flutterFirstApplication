import 'package:editable/editable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PendingTabDesigner extends StatefulWidget {
  @override
  _PendingTabDesignerState createState() => _PendingTabDesignerState();
}

class _PendingTabDesignerState extends State<PendingTabDesigner> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Divider(height: 1, thickness: 2, color: Color(0xffb2b2b2)),
          ExpansionTile(
            title: Text(
              "Chandana Perera",
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "57/6A, Liberty Park, Kesbawa",
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Color(0xfff15a29),
              ),
            ),
            children: <Widget>[
              Divider(height: 1, thickness: 2, color: Color(0xffb2b2b2)),
              StarDisplay1(),
              Divider(height: 1, thickness: 2, color: Color(0xffb2b2b2)),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Sub Total ',
                      style: GoogleFonts.portLligatSans(
                        textStyle: Theme.of(context).textTheme.headline1,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: '180',
                          style: GoogleFonts.portLligatSans(
                            textStyle: Theme.of(context).textTheme.headline1,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xfff15a29),
                          ),
                        ),
                      ])
                ),
              ),
              Divider(height: 1, thickness: 2, color: Color(0xffb2b2b2)),
              StarDisplay2(),
            ],
          ),
          Divider(height: 1, thickness: 2, color: Color(0xffb2b2b2)),
          ExpansionTile(
            title: Text(
              "Sandun Perera",
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "57/4A, Liberty Park, Kesbawa",
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Color(0xfff15a29),
              ),
            ),
            children: <Widget>[
              IconTheme(
                data: IconThemeData(
                  color: Colors.yellow,
                  size: 32,
                ),
                child: StarDisplay(value: 2),
              ),
              Text("This image has 3 star rating ")
            ],
          ),
          Divider(height: 1, thickness: 2, color: Color(0xffb2b2b2)),
        ],
      ),
    ));
  }
}

class StarDisplay1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Name',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Color(0xfff15a29),
          ),)),
        DataColumn(label: Text('Year',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Color(0xfff15a29),
          ),)),
        DataColumn(label: Text('Name',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Color(0xfff15a29),
          ),)),
        DataColumn(label: Text('Year',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Color(0xfff15a29),
          ),)),
        DataColumn(label: Text('Name',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Color(0xfff15a29),
          ),)),
      ],
      rows: [
        DataRow(cells: [DataCell(Text('Tharindu',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline1,
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Color(0xff000000),
          ),)),
          DataCell(Text('2020',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.headline1,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Color(0xff000000),
            ),)),
          DataCell(Text('2020',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.headline1,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Color(0xff000000),
            ),)),
          DataCell(Text('2020',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.headline1,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Color(0xff000000),
            ),)),
          DataCell(Text('2020',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.headline1,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Color(0xff000000),
            ),))]),
      ],
    );
  }
}

class StarDisplay2 extends StatelessWidget {
  final int value;

  const StarDisplay2({Key? key, this.value = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            width: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff00912b),
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
                  color: Color(0xffffffff),
                ),
              ),
              onPressed: () {
                print('Accept');
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
                primary: Color(0xffbe1e2d),
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
                  color: Color(0xffffffff),
                ),
              ),
              onPressed: () {
                print('Riject');
              },
            ),
          ),
        ),
      ],
    );
  }
}

class StarDisplay extends StatelessWidget {
  final int value;

  const StarDisplay({Key? key, this.value = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}
