import 'package:flutter/material.dart';
import 'package:trips_flutter/components/gradient_button.dart';
import 'package:trips_flutter/components/rank_stars.dart';

class DescriptionPlace extends StatelessWidget {
  final namePlace;
  final descriptionPlace;
  final stars;

  DescriptionPlace(
      {this.namePlace = "", this.descriptionPlace = "", this.stars = 4.5});

  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 10.0),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Lato",
            ),
            textAlign: TextAlign.center,
          ),
        ),
        RankStars(
          rank: stars,
          marginTop: 326.0,
          size: 20.0,
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.all(20.0),
      child: Text(descriptionPlace,
          style: TextStyle(
              color: Color(0xFF56575a), fontSize: 16.0, fontFamily: "Lato")),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        GradientButton(),
      ],
    );
  }
}
