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
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("main content"),
      ),
      body: MainListView(),
    );
}

}
class MainListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListItem("1","2"),
        Divider(),
        ListItem("title", "title"),
        Divider(),
        ListItem("title2","title2"),
        Divider(),
        ListItem("title3", "title3")

      ],
    );
  }

}
class ListItem extends StatelessWidget{
  final String title;
  final String subTitle;


  ListItem(this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,
          style: TextStyle(
            fontSize: 30,
            color: Colors.cyanAccent
          )
          ),
          Text(subTitle)
        ],
      ),
    );
  }
}