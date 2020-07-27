import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 110),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.westernunion.com/content/dam/wu/jm/responsive/send-money-in-person-from-jamaica-resp.png"),
                  ),
                ),
                height: 90.0,
                width: 90.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Pathum Tzoo",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: "Lato",
                        ),
                      ),
                      Text(
                        "pathumzoo@gmail.com",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16.0,
                          fontFamily: "Lato",
                        ),
                      ),
                    ]),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _printIcon(Icons.bookmark, false),
              _printIcon(Icons.live_tv, false),
              _printIcon(Icons.add, true),
              _printIcon(Icons.email, false),
              _printIcon(Icons.person, false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _printIcon(IconData icon, bool isPrimary) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        color: isPrimary ? Colors.white : Colors.white54,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          padding: EdgeInsets.all(15.0),
          iconSize: isPrimary ? 35.0 : 23.0,
          color: Colors.red,
          icon: Icon(
            icon,
            color: Colors.blue,
          ),
          onPressed: null),
    );
  }
}
