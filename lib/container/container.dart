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
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          StandardText("aaa"),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              StandardText("vertical"),
              StandardText("vertical"),
            ],
          ),
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.only(top: 15),
          child: StandardText("seperation"),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            border: Border.all(
              width: 12.5,
              color: Colors.black,

            ),
          ),
        ),
        Expanded(
            child: StandardText("bigger")
        )

        ],
      ),
    );
  }

}
class StandardText extends StatelessWidget{
  final String info;
  StandardText(this.info);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      info,
      style: TextStyle(
        color: Colors.pinkAccent,
        fontSize: 20
      ),
    );
  }

}