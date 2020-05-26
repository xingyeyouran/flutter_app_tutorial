
import 'package:flutter/material.dart';

main()=>runApp(AppEntrance());

class AppEntrance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MainBody(),
    );
  }
}
class MainBody extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("button"),
                onPressed: (){
              showDialog(context: context,
              builder: (context){
                return AboutDialog(children: <Widget>[
                  FlatButton(onPressed: (){
                    Navigator.of(context).pop();

                  }, child: Text("i got it"))
                ],
                );
              });
            }),
            RaisedButton(
              child: Text("button 2"),
                onPressed:(){
              showDialog(
                barrierDismissible: false,
                  context: context,
              builder: (context){
                return AlertDialog(
                  content: Text("fff"),
                  actions: <Widget>[
                    FlatButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("ok"))
                  ],
                );
              });
            },)
          ],
        ),
      ),
    );
  }

}