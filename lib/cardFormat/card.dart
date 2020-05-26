import 'package:flutter/material.dart';

main()=>runApp(AppEntrance());

class AppEntrance extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MainBody("dynamic state demo"),

    );
  }

}
class MainBody extends StatefulWidget{
  final String title;

  MainBody(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainBodyState();
  }

}
class MainBodyState extends State<MainBody>{
  int pressedCount;
  FloatingActionButtonLocation location;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pressedCount=0;
    location=FloatingActionButtonLocation.endFloat;
  }
  _pressButton(){
    pressedCount++;
    pressedCount%2==0?location=FloatingActionButtonLocation.centerFloat:location=FloatingActionButtonLocation.endFloat;
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(child: Text("you have pressed"+": $pressedCount",style: TextStyle(fontSize: 26),)),
      floatingActionButtonLocation: location,
      floatingActionButton: FloatingActionButton(onPressed: _pressButton,
        child: Icon(Icons.add),
      ),
    );
  }

}