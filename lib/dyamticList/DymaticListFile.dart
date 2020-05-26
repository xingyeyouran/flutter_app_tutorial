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
      body: MainListView(30),
    );
  }

}
class MainListView extends StatelessWidget{
  final int index;

  MainListView(this.index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      itemCount: index,
      itemBuilder: (_,index){
        return ListItem("title$index", "subTitle$index");
      },
      separatorBuilder: (_,__){return Divider();},
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