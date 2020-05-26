import 'package:flutter/material.dart';

main()=>runApp(AppEntrance());

class AppEntrance extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MainBody(),

    );
  }

}
class MainBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: GestureLayout(),
    );
  }
}

class GestureLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
       GestureDetector(
         onTap: (){
           Scaffold.of(context).showSnackBar(SnackBar(
             content: Text("your finger touched first column"),
             action: SnackBarAction(label: "I got it", onPressed: (){

             }),
           ));
         },
         child: Text(
           "GestureDetector",
           style: TextStyle(
           fontSize: 30
         ),),
       ),
        Divider(),
        InkWell(
          onTap:() {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("your finger touched second column"),
              action: SnackBarAction(label: "I got it", onPressed: (){

              }),
            ));
          },
          splashColor: Color.fromARGB(255, 255, 248, 220),
          child: Container(
                  padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
              child: Text("Ink well style one ",style: TextStyle(fontSize: 30),)),
        )
      ],
    );
  }

}