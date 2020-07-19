import 'package:flutter/material.dart';
import 'package:trips_flutter/pages/profile_place/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Review(
        userName: "Pedro Ipsum",
      ),
      Review(
        userName: "Juan Keto",
        pathImage:
            "https://cdn.bioguia.com/embed/78f416428dff376c6586e3d8e1ffb151569502056/consejos-ser-viajero-sustentable.jpg?imagick=1&size=500",
        details: "20 reviews 100 photos",
        comment: "Best place forever.",
      ),
      Review(
        userName: "Pedro Ipsum",
      ),
      Review(
        userName: "Juan Keto",
        pathImage:
            "https://cdn.bioguia.com/embed/78f416428dff376c6586e3d8e1ffb151569502056/consejos-ser-viajero-sustentable.jpg?imagick=1&size=500",
        details: "20 reviews 100 photos",
        comment: "Best place forever.",
      ),
      Review(
        userName: "Juan Keto",
        pathImage:
            "https://cdn.bioguia.com/embed/78f416428dff376c6586e3d8e1ffb151569502056/consejos-ser-viajero-sustentable.jpg?imagick=1&size=500",
        details: "20 reviews 100 photos",
        comment: "Best place forever.",
      ),
    ]);
  }
}
