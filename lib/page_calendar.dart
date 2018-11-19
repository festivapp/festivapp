import 'package:flutter/material.dart';
import 'drawer.dart';

class PageCalendar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
      ),
      drawer: FestivappDrawer(),
    );
  }
}