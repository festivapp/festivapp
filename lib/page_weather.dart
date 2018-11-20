import 'package:flutter/material.dart';
import 'drawer.dart';

class PageWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Wetter'),
      ),
      drawer: FestivappDrawer(),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Text('26 Grad', textScaleFactor: 2, style: textTheme.body2),
          Text('Sonne', textScaleFactor: 2, style: textTheme.body2),
          Image.network('https://placehold.it/600x600'),
          Text('Magdeburg, Deutschland',
              textScaleFactor: 1.5, style: textTheme.body2),
        ],
      )),
    );
  }
}
