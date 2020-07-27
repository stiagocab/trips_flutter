import 'package:flutter/material.dart';
import 'package:trips_flutter/pages/home_page.dart';
import 'package:trips_flutter/pages/search_page.dart';
import 'package:trips_flutter/pages/user_profile_page.dart';

class AppTrips extends StatefulWidget {
  AppTrips({Key key}) : super(key: key);

  @override
  _AppTripsState createState() => _AppTripsState();
}

class _AppTripsState extends State<AppTrips> {
  int selected = 0;
  final List<Widget> widgetsList = [
    HomePage(),
    SearchPage(),
    UserProfilePage(),
  ];

  void _onTapButton(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsList[selected],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: _onTapButton,
          currentIndex: selected,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
