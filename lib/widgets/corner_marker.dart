import 'package:flutter/material.dart';

class CornerMarker extends StatefulWidget {

  final Size size;
  final Color cornerColor;
  final cornerAlignment;
  final bool useAngle;
  final String text;
  final TextStyle textStyle;


  CornerMarker(
    {
      this.size=Size.infinite,
      this.text="HOT",
      this.textStyle,
      this.cornerColor=Colors.blue,
      this.cornerAlignment=cornerAlignment.leftTop,
    }
  )

  @override
  State<StatefulWidget> createState(){
    return CornerMarkerState();
  }
  
}

class CornerMarkerState extends State<CornerMarker> {

  static final double PI=3.1415926;
  var textAngle;
  var textAlignment;
  
  var offset;

  @override
  Widget build(BuildContext context){
  var offsetX=widget.size.width>widget.size.height?widget.size.height/4.5:widget.size.width/4.5;
  
  }
  
}