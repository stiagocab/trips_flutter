import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientBack extends StatelessWidget {
  String title;
  double height;
  GradientBack({this.title = "Title", this.height = 250.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.9),
          stops: [0.0, 0.7],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: Alignment(-0.9, -0.75),
    );
  }
}
