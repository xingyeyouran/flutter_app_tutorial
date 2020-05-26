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
  final _globalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _globalKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (str)=>str.length>5?null:"sss",
               maxLines: 1,
            ),
            RaisedButton(
              child: Text("Submit"),
              onPressed: (){
                var validateInput=_globalKey.currentState;
                validateInput.validate();
                setState(() {

                });
              },
            ),
            RaisedButton(
              child: Text("Reset"),
              onPressed: (){
                var validateInput=_globalKey.currentState;
                validateInput.reset();
                setState(() {

                });
              },
            ),
          ],
        ),
      ),
    );
  }

}