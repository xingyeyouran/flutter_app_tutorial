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
  var _dropdownElection;
  @override
  void initState() {
    _dropdownElection=1;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          DropdownButton(
            value: _dropdownElection,
              items: [
                DropdownMenuItem(
                    child: Text("java"),
                    value: 1,),
                DropdownMenuItem(
                  child: Text("Python"),
                  value: 2,),
                DropdownMenuItem(
                  child: Text("Scala"),
                  value: 3,),
              ],
              onChanged: (index){
                _dropdownElection=index;
                setState(() {

                });
              })
        ],
      ),
    );
  }

}