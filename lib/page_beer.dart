import 'package:flutter/material.dart';
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

  Widget botBar() {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SelectionButton.button(Icons.clear, Colors.red, () {}),
              SelectionButton.button(Icons.check, Colors.green, () {}),
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
        child: Image.asset('assets/50.png'),
      ),
      bottomNavigationBar: botBar(),
    );
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