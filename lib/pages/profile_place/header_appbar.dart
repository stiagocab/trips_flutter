import 'package:flutter/material.dart';
import 'package:trips_flutter/components/gradient_back.dart';
import 'package:trips_flutter/pages/profile_place/card_image_list.dart';

// ignore: must_be_immutable
class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack(title: "Popular", height: 300.0,), CardImageList()],
    );
  }
}
