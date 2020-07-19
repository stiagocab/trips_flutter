import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget {
  String pathImage;
  CardImage({this.pathImage = "http://1x1px.me/584CD1-1.png"});

  @override
  Widget build(BuildContext context) {
    return _card();
  }

  Widget _card() {
    return Container(
      width: 250.0,
      height: 350.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15.0,
            offset: Offset(0.0, 2.0),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        child: FadeInImage(
          placeholder: AssetImage("assets/images/jar-loading.gif"),
          image: NetworkImage(pathImage),
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 500),
          fadeInCurve: Curves.ease,
        ),
      ),
    );
  }
}
