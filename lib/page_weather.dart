import 'package:flutter/material.dart';
import 'drawer.dart';

class PageWeather extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wetter'),
      ),
      drawer: FestivappDrawer(),
    );
  }
}