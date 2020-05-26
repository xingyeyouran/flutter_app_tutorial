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
class CustomizedHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("input data demo"),),
      body: ListView(
        padding: EdgeInsets.only(top: 20),
        children: <Widget>[
          TextField(
            maxLines: 1,
            maxLength: 20,

            decoration: InputDecoration(
              border: OutlineInputBorder(

              ),
              hintText: "Your phone number",
              labelText: "Phone number",
            ),
            keyboardType:   TextInputType.number,
          ),
          TextField(
            maxLines: 1,
            maxLength: 20,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(

              ),
              hintText: "your password",
              labelText: "Password"
            ),
          ),
          TextField(
            maxLines: null,
            maxLength: null,
//            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(

                ),
                hintText: "My diary",
                labelText: "Diary"
            ),
          )
        ],
      ),
      
    );
  }

}