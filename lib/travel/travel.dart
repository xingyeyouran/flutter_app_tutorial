import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "List View",
      home: MyHomePage(),
    );
  }

}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image.asset(
            "images/fushimi.jpg",
            fit: BoxFit.contain,
          ),
          Container(
              child: _buildTitle("伏見稲荷大社", "日本　京都市の神社  ", Icon(Icons.star)),
          padding: EdgeInsets.only(left: 20,
          right: 20),),

        ],
      ),
    );
  }
}

Row _buildTitle(String title,String subtitle,Icon icon){
  return Row(
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold),),
          Row(
            children: <Widget>[
              Text(subtitle,
              style: (TextStyle(fontSize: 15,
                  fontWeight: FontWeight.w200,
              color: Colors.grey)
              ) ,),
               Text("営業時間中",
               style: TextStyle(
                 color: Colors.green
               ),)
            ],
          )
        ],
      ),
    ],
  );
}