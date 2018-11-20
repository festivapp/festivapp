import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class PageCalendar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
      ),
      drawer: FestivappDrawer(),
      body: Calendar(
        isExpandable: true,
      ),
    );
  }
}