
import 'package:flutter/material.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }

}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("grid view")),
          body: MyGridView(),
    );
  }

}
class MyGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTittleList(30),
    );
  }

}
List<Widget> _buildGridTittleList(int count){
  List<Widget> containers=[];
  for(var i=1;i<count;i++){
    var image=Image.network("https://picsum.photos/id/$i/150");
    containers.add(image);
  }
  return containers;
}