import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/progress_bars.dart';
import 'package:flutter_app/pages/login.dart';

void main() {
  runApp(new MaterialApp(
    home: CircleProgressBarDemo(),
  ));
}

class CircleProgressBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CircleProgressBarDemoState();
  }
}

class CircleProgressBarDemoState extends State<CircleProgressBarDemo> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('circle')),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: CircleProgressBar(
                    100.0,
                    bgColor: Colors.grey,
                    foreColor: Colors.blueAccent,
                    startNumber: 0,
                    maxNumber: 100,
                    duration: 10000,
                    textPercent: true,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: Text("$number"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new PageRouteBuilder(pageBuilder:
                        (BuildContext context, Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                      return new LoginPage();
                    }));
                  },
                  child: Text("$number"),
                )
              ],
            )
          ],
        ));
  }
}
