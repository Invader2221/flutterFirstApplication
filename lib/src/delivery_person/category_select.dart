import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyerSuccessMessage extends StatelessWidget {
  const BuyerSuccessMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategorySelect(),
    );
  }
}

class CategorySelect extends StatefulWidget {
  const CategorySelect({Key? key}) : super(key: key);

  @override
  _CategorySelectState createState() => _CategorySelectState();
}

class _CategorySelectState extends State<CategorySelect> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<String> images = [
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png",
    "assets/images/icon.png"
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          child: Text('Test',)
        ),
        // title: Image.asset('assets/images/icon.png', height: 150, width: 150,),
        backgroundColor: Color(0xff231f20),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff231f20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff15a29),
                    shape: StadiumBorder(),
                    minimumSize: Size.fromHeight(60),
                    shadowColor: Color(0xFFFFFF),
                  ),

                  child: Text(
                    'Your Photo',
                    textAlign: TextAlign.left,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => CategorySelect()),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff15a29),
                    shape: StadiumBorder(),
                    minimumSize: Size.fromHeight(60),
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
                          builder: (context) => CategorySelect()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
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
              colors: [Color(0xfffafafa), Color(0xffdbdbdb)]
          ),
        ),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0
          ),
          itemBuilder: (BuildContext context, int index){
            return Image.asset(images[index]);
          },),
      ),
    );
  }
}
