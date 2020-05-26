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
    return CustomizedHomePageState();
  }

}
class CustomizedHomePageState extends State<CustomizedHomePage>{
 var _textController=TextEditingController();
 var _textModify="";
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textController.addListener((){
      _textModify=_textController.text;
      setState(() {

      });
    }
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body:ListView(
        children: <Widget>[
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              labelText: "my name",
              border: OutlineInputBorder(),
            ),
          ),
          Divider(),
          Text("what your input is $_textModify")
        ],
      ),
    );
  }

}