import 'package:flutter/material.dart';
import 'drawer.dart';

class PageMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Karte'),
      ),
      drawer: FestivappDrawer(),
    );
  }
}