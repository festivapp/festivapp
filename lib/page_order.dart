import 'package:flutter/material.dart';
import 'drawer.dart';

class PageOrder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Runningorder'),
      ),
      drawer: FestivappDrawer(),
    );
  }
}