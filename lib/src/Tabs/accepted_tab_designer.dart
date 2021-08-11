import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcceptedTabDesigner extends StatefulWidget {
  @override
  _AcceptedTabDesignerState createState() =>
      _AcceptedTabDesignerState();
}
class _AcceptedTabDesignerState extends State<AcceptedTabDesigner> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ExpansionTile(
                title: Text("Harley-Davidson"),
                subtitle: Text("Explore the world of H-D"),
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
              ExpansionTile(
                title: Text("Harley-Davidson"),
                subtitle: Text("Explore the world of H-D"),
                children: <Widget>[
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.amber,
                      size: 32,
                    ),
                    child: StarDisplay(value: 2),
                  ),
                  Text("This image has 3 star rating ")
                ],
              ),
            ],
          ),
        ));
  }
}
class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({Key? key, this.value = 0})
      : super(key: key);
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