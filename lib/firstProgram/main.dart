import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends   StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "first app",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyHomePage(
        title: "Homepage",
      ),
    );
  }

}
class MyHomePage extends StatelessWidget{
  final title;
  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("demo"),
      ),
      body: Container(
        child: Text("芜湖 起飞飞飞飞！！！"),
      ),
    );
  }

}