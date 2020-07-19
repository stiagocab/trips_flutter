import 'package:flutter/material.dart';
import 'package:trips_flutter/components/rank_stars.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage;
  String userName;
  String details;
  String comment;
  Review(
      {this.pathImage =
          "https://escuelanomadadigital.com/wp-content/uploads/2018/07/sindrome-viajero-eterno.jpg",
      this.userName,
      this.details = "1 review 3 photos",
      this.comment = "There is an amazing place in Sri Lanka"});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _createPhoto(),
          userDetails(),
        ],
      ),
    );
  }

  Widget _createPhoto() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(pathImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget userDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(userName,
            style: TextStyle(
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black54)),
        Row(
          children: <Widget>[
            Text(details,
                style: TextStyle(
                    fontFamily: "Lato", fontSize: 15.0, color: Colors.black54)),
            Padding(padding: EdgeInsets.only(left: 5.0)),
            RankStars(
              rank: 3.5,
              marginTop: 3.0,
              size: 15.0,
            )
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 5.0)),
        Text(
          comment,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 16.0, color: Colors.black),
        )
      ],
    );
  }
}
