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
        _buildListTileItem("title", "subtitle", Icon(Icons.access_alarm), context,trailing: Icon(Icons.more_vert)),
        _buildListTileItem("title", "subtitle", Icon(Icons.access_alarm), context,trailing: Icon(Icons.more_vert)),
        _buildListTileItem("title", "subtitle", Icon(Icons.access_alarm), context,trailing: Icon(Icons.more_vert)),
        _buildListTileItem("title", "subtitle", Icon(Icons.access_alarm), context,trailing: Icon(Icons.more_vert)),


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
ListTile _buildListTileItem(String title,String subtitle,Icon icon,BuildContext context,{Icon trailing}){
  return ListTile(
    leading: icon,
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: trailing,
    onTap: (){},

  );
}
