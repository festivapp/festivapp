import 'package:flutter/material.dart';
import 'dart:math';
import 'drawer.dart';

class PageBeer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bierbörse',
      home: BeerPage(),
    );
  }
}

class BeerPage extends StatefulWidget {
  BeerPageState createState() => BeerPageState();
}

class BeerPageState extends State<BeerPage> {
  @override

  static List<Beer> beer = [Beer.beer('5.0', 'assets/50.png'), Beer.beer('5.0ex', 'assets/50_export.png'), Beer.beer('2.5', 'assets/25.jpg'), Beer.beer('becks', 'assets/becks.png'), Beer.beer('sternburg', 'assets/sternburg.png')];
  Beer active = beer[0];

  void rejectImage() {
    var rand = new Random();
    int index = rand.nextInt(beer.length);
    setState(() {
      active = beer[index];
    });
  }

  void acceptImage() {
    var rand = new Random();
    int index = rand.nextInt(beer.length);
    if (active.name == 'sternburg') {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Warnung!'),
              content: Text('Du hast gerade versucht Sternburg auszuwählen!'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Es tut mir leid!'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          },
      );
    } else {
      setState(() {
        active = beer[index];
      });
    }
  }

  Widget botBar() {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SelectionButton.button(Icons.clear, Colors.red, () => rejectImage()),
              SelectionButton.button(Icons.check, Colors.green, () => acceptImage()),
            ],
          ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bierbörse'),
      ),
      drawer: FestivappDrawer(),
      body: Center(
        child: active,
      ),
      bottomNavigationBar: botBar(),
    );
  }

}

class Beer extends StatelessWidget {

  final String name;
  final String asset;

  Beer.beer(
      this.name,
      this.asset,
      );

  @override
  Widget build(BuildContext context) {
    return Image.asset(asset);
  }

}

class SelectionButton extends StatelessWidget {

  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final double size;

  SelectionButton.button(
    this.icon,
    this.color,
    this.onPressed
  ) : size = 60.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: RawMaterialButton(
          shape: CircleBorder(),
          child: Icon(
              icon,
              color: color,
          ),
          onPressed: onPressed,
      ),
    );
  }

}