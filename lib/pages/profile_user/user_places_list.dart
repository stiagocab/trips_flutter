import 'package:flutter/material.dart';
import 'package:trips_flutter/pages/profile_user/user_places_card.dart';

class UserPlacesList extends StatefulWidget {
  @override
  _UserPlacesListState createState() => _UserPlacesListState();
}

class _UserPlacesListState extends State<UserPlacesList> {
  final dataPlace = {
    "name": "Puerto Vallarta",
    "description":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nulla ex, suscipit at ornare sed, fermentum eget lacus. Praesent nec.",
    "steps": "13,123",
    "image":
        "https://images.unsplash.com/photo-1559719809-ef643b8652f7?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600"
  };
  final dataPlaceTwo = {
    "name": "Cancún",
    "description": "Lorem ipsum dolor sit amet.",
    "steps": "10,200",
    "image":
        "https://images.unsplash.com/photo-1545378314-ca30c6c8022d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600",
  };

//  image: "https://images.unsplash.com/photo-1545378314-ca30c6c8022d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600",
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserPlacesCard(
          data: dataPlace,
          liked: true,
        ),
        UserPlacesCard(
          data: dataPlaceTwo,
        ),
        UserPlacesCard(
          data: dataPlace,
        ),
        UserPlacesCard(
          data: dataPlaceTwo,
          liked: true,
        )
      ],
    );
  }
}
