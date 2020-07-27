import 'package:flutter/material.dart';
import 'package:trips_flutter/components/gradient_back.dart';
import 'package:trips_flutter/pages/profile_user/header_profile.dart';
import 'package:trips_flutter/pages/profile_user/user_places_list.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Stack(
        children: <Widget>[
          GradientBack(
            title: "Profile",
            height: 380.0,
          ),
          ListView(
            children: <Widget>[
              // HeaderProfile(),
              Container(
                child: UserPlacesList(),
                margin: EdgeInsets.only(top: 320.0),
              ),
            ],
          ),
          Container(
            height: 350.0,
            child: Column(
              children: <Widget>[
                HeaderProfile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
