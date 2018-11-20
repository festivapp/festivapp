import 'package:flutter/material.dart';
import 'drawer.dart';

class PageChecklist extends StatefulWidget {

  State createState() => new CheckList();
}

class CheckList extends State<PageChecklist> {

  List<String> items = [];
  final TextEditingController ctrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkliste'),
      ),
      drawer: FestivappDrawer(),
      body: Column(
        children: <Widget>[
          TextField(
            controller: ctrl,
            onSubmitted: (text) {
              items.add(text);
              ctrl.clear();
              setState(() {});
            },
          ),
          new Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                      return CheckboxListTile(
                        title: Text(items[index]),
                        value: false,
                        onChanged: (bool val) {
                          setState(() {

                          });
                        }
                    );
                  }
              )
          ),
        ],
      ),
    );
  }

}