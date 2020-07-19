import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  double marginTop = 30.0;
  String title = "Navegar";
  bool primary = false;
  final primaryColors = [Color(0xFF4268D3), Color(0xFF5884CD1)];
  final secondColors = [Color(0xFF5884CD1), Colors.amberAccent];

  // GradientButton({this.marginTop = 30.0, this.title = "NAVIGATE"});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      child: InkWell(
        onTap: () {
          setState(() {
            primary = !primary;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 600),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              colors: primary ? primaryColors : secondColors,
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp,
            ),
          ),
          height: 50.0,
          width: 180.0,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                fontFamily: "Lato",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
