import 'package:flutter/material.dart';
import 'package:trips_flutter/components/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(
              pathImage:
                  "https://images.unsplash.com/photo-1559719809-ef643b8652f7?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600"),
          CardImage(
            pathImage:
                "https://images.unsplash.com/photo-1545378314-ca30c6c8022d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600",
          ),
          CardImage(
            pathImage:
                "https://images.unsplash.com/photo-1552506667-336694bf67dc?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600",
          ),
          CardImage(
            pathImage:
                "https://images.unsplash.com/photo-1414490929659-9a12b7e31907?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600",
          ),
        ],
      ),
    );
  }
}

// https://images.unsplash.com/photo-1552506667-336694bf67dc?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600
// https://images.unsplash.com/photo-1414490929659-9a12b7e31907?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=900&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=1600
