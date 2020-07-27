import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserPlacesCard extends StatelessWidget {
  int steps;
  bool liked;
  var data = {};

  UserPlacesCard({
    this.liked = false,
    @required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsetsDirectional.only(bottom: 20.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 250.0,
              // color: Colors.yellow,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(data["image"]),
                ),
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.red,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 2.0),
                  )
                ],
              ),
            ),
            _createInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _createInfo(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 190.0),
        child: Container(
          child: SizedBox(
            width: 280.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data["name"],
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: "Lato",
                      fontSize: 17.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Text(
                  data["description"],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: "Lato",
                      fontSize: 17.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Steps  ",
                          ),
                          TextSpan(text: data["steps"]),
                        ],
                      ),
                    ),
                    FloatingActionButton(
                      mini: true,
                      backgroundColor:
                          liked ? Colors.red : Colors.redAccent[100],
                      onPressed: () {},
                      child: Icon(
                        Icons.favorite,
                        size: 20.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          padding: EdgeInsets.all(20.0),
          // height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 2.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
