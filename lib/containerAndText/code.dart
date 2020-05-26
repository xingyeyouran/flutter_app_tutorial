
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              StandardText("fff"),
              StandardText("qqq"),
              StandardText("ggg"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Center(child: StandardText("Aaa")),
                        StandardText("bbb"),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
                Expanded(
                    child: StandardText("txt"),
                  flex: 1,
                ),
              Expanded(
                flex: 3,
                child: Center(child: StandardText("smaller txt")),
              )
            ],
          )
        ],
      ),
    );
  }

}
class StandardText extends StatelessWidget{
  final String txt;
  StandardText(this.txt);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      txt,
      style: TextStyle(
        color: Colors.deepOrangeAccent,
        fontSize: 30
      ),
    );
  }

}