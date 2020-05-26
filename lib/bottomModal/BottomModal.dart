
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
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("tap it! "),
            onPressed: (){
              showModalBottomSheet(
                context: context,
                builder: (context){
                  return Container(
                    height: 300,
                    color: Color.fromARGB(255,204,204,255),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("fff"),
                          RaisedButton(
                            child: Text("Close"),
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }
              );
            },
          ),
        ],
      ),
      );
  }

}