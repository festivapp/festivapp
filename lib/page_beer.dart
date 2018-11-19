import 'package:flutter/material.dart';
import 'drawer.dart';

class PageBeer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bierbörse'),
      ),
      drawer: FestivappDrawer(),
    );
  }
}