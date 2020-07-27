import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trips_flutter/pages/home_page.dart';
import 'package:trips_flutter/pages/search_page.dart';
import 'package:trips_flutter/pages/user_profile_page.dart';

class TripsAppCuptertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
            ),
          ],
        ),
        // ignore: missing_return
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomePage(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchPage(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => UserProfilePage(),
              );
              break;
          }
        },
      ),
    );
  }
}
