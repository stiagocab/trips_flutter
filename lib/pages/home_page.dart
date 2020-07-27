import 'package:flutter/material.dart';
import 'package:trips_flutter/pages/profile_place/description_place.dart';
import 'package:trips_flutter/pages/profile_place/header_appbar.dart';
import 'package:trips_flutter/pages/profile_place/review_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dummyText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in dui commodo, aliquam mauris a, accumsan dolor. Maecenas tempus ligula mi, vel sodales lorem ultrices sit amet. Integer erat purus, finibus accumsan sollicitudin eget, pellentesque non augue. \n\n Nunc sodales orci eu elit eleifend, eu finibus purus malesuada. Proin auctor mi ut blandit ornare. Suspendisse fringilla eget ligula varius sagittis.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionPlace(
                stars: 4.0,
                namePlace: "Duwilli Ella",
                descriptionPlace: dummyText,
              ),
              ReviewList()
            ],
          ),
          HeaderAppBar()
        ],
      ),
    );
  }
}
