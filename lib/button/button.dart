
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
 var _unfixedCheckBox;
 var _fixedChecksBox;
 var _radioGroup;
 var _switchStatus;
 var _usageTerm;
 var _ContinueRight;
 @override
  void initState() {
   _usageTerm=false;
   _radioGroup=0;
   _fixedChecksBox=false;
   _unfixedCheckBox=true;
   _switchStatus=false;
   _ContinueRight=false;
    // TODO: implement initState
    super.initState();
  }
  _radioOnChanging(value){
   _radioGroup=value;
   setState(() {
     
   });
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("various checkbox"),),
      body: ListView(
        children: <Widget>[
          Checkbox(value: _unfixedCheckBox, onChanged: (value){
            _unfixedCheckBox=value;
            setState(() {
            });
          }),
          CheckboxListTile(
            subtitle: Text("what this"),
            secondary: Icon(Icons.settings),
            title: Text("use default settings"),
              value: _fixedChecksBox, onChanged: (v){
            _fixedChecksBox=v;
            setState(() {
            });
          }),
          Row(
            children: <Widget>[
              Expanded(
                  child:RadioListTile(
                    title: Text("英語"),
                    value: 1, groupValue: _radioGroup, onChanged: _radioOnChanging,) ),
              Expanded(
                  child:RadioListTile(
                    title: Text("フランス語"),
                    value: 2, groupValue: _radioGroup, onChanged: _radioOnChanging,) ),
              Expanded(
                  child:RadioListTile(
                    title: Text("中国語"),
                    value: 3, groupValue: _radioGroup, onChanged: _radioOnChanging,) ),
            ],
          ),
          SwitchListTile(
            title: Text("use automatic data saver"),
              value: _switchStatus, onChanged: (value){
            _switchStatus=value;
            setState(() {

            });
          }),
          CheckboxListTile(
            title: Text("I agree all using terms"),
              value: _usageTerm,
              onChanged: (value){
                _usageTerm=value;
                setState(() {
                });
              }),
          CheckboxListTile(
            title: Text("Start!"),
              value: _ContinueRight, onChanged: _usageTerm?(value){
            _unfixedCheckBox=value;
            setState(() {

            });
          }:null)
        ],
      ),
    );
  }

}