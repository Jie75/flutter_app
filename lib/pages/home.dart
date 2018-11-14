import 'package:flutter/material.dart';
import '../provider/Icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomePage'),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      drawer: Drawer(
        child: new Column(
          children: <Widget>[
            new Container(
              color: Colors.lightBlue,
              child: Text('null'),
            ),
            new Image.asset(
              'assets/imgs/banner/fly.png',
            ),
            new Expanded(
              child: new Container(
                child: listview(),
              ),
              flex: 1,
            ),
            new ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: null,
                  child: new Text(
                    'ok',
                  ),
                ),
                RaisedButton(
                  onPressed: null,
                  child: new Text('ok'),
                )
              ],
            )
          ],
        ),
      ),
      body: new Column(children: [
        Container(
          child: new Image.asset('assets/imgs/banner/fly.png'),
        ),
        Expanded(
            child: Container(
                height: 500,
                margin: const EdgeInsets.all(20.0),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10.0),
                foregroundDecoration: new BoxDecoration(
                  border: new Border.all(width: 1.0, color: Colors.green),
                ),
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(1000.0),
                        topRight: Radius.circular(1000)),
                    border: new Border.all(width: 1.0, color: Colors.green)),
                child: Text(
                  'hello world',
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.green,
                    fontSize: 20,
                  ),
                )))
      ]),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        child: new Icon(
          EIcons.person,
          size: 35,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  ListView listview() {
    return new ListView(
      children: <Widget>[
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
        ListTile(
          leading: Text('1'),
        ),
      ],
    );
  }
}
