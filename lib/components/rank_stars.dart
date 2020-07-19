import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RankStars extends StatelessWidget {
  double rank = 0.0;
  double marginTop = 0.0;
  double size = 20.0;
  final color = Color(0xFFf2C611);
  RankStars({this.rank, this.marginTop, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(child: _printRank());
  }

  Widget _star() {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: Icon(Icons.star, color: color, size: size),
    );
  }

  Widget _strokeStar() {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: Icon(Icons.star_border, color: Colors.grey[300], size: size),
    );
  }

  Widget _halfStar() {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: Icon(Icons.star_half, color: color, size: size),
    );
  }

  Widget _printStar(pos) {
    if (pos == rank) {
      return _star();
    } else if (pos < rank) {
      return _star();
    } else if (pos - 0.5 == rank) {
      return _halfStar();
    } else {
      return _strokeStar();
    }
  }

  Widget _printRank() {
    return Row(
      children: <Widget>[
        _printStar(1),
        _printStar(2),
        _printStar(3),
        _printStar(4),
        _printStar(5),
      ],
    );
  }
}
