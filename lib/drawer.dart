import 'package:flutter/material.dart';
import 'page_calendar.dart';
import 'main.dart';
import 'page_beer.dart';
import 'page_checklist.dart';
import 'page_map.dart';
import 'page_order.dart';
import 'page_weather.dart';

class FestivappDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text('Festivapp')),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            ListTile(
              title: Text('Kalender'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageCalendar()));
              },
            ),
            ListTile(
              title: Text('Checkliste'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageChecklist()));
              },
            ),
            ListTile(
              title: Text('Wetter'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageWeather()));
              },
            ),
            ListTile(
              title: Text('Bierbörse'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageBeer()));
              },
            ),
            ListTile(
              title: Text('Karte'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageMap()));
              },
            ),
            ListTile(
              title: Text('Runningorder'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageOrder()));
              },
            )
          ],
        )
    );
  }

}