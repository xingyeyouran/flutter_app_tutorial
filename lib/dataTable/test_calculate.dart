import 'dart:math';

import 'package:flutter/material.dart';

main()=>runApp(AppEntrance());

class AppEntrance extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CustomizedHomePage(),
    );
  }

}
class CustomizedHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CustomizedHomePageState();
  }

}
class CustomizedHomePageState extends State<CustomizedHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: _getListItem(),
      ),

    );
  }

}
_getListItem(){
  List<Text> items=[];
  var r=Random();
  for (int i=0;i<10;i++){
    var random=r.nextDouble();
    double result= double.parse(random.toStringAsFixed(1));
    items.add(Text("$result"));
  }
  return items;
}