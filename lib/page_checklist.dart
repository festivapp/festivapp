import 'package:flutter/material.dart';
import 'drawer.dart';

class PageChecklist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkliste'),
      ),
      drawer: FestivappDrawer(),
    );
  }
}