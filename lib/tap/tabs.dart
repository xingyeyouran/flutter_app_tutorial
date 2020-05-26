
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "fff",
      home: MyHomePage(),
    );
  }

}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      initialIndex: 1,
        length: _getTabs().length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("tab demo"),
            bottom: TabBar(
              tabs: _getTabs().map((t)=>t.tab).toList(),
            ),
          ),
          body:TabBarView(children:
              _getTabs().map((t)=>t.taBody).toList()
          )

        )
    );
  }

}
class CompoundedTab{
  Tab tab;
  Widget taBody;

  CompoundedTab(this.tab, this.taBody);

}
List<CompoundedTab> _getTabs() {
  return [
    CompoundedTab(Tab(
        icon: Icon(Icons.directions_car)),
    ListView.separated(
      itemCount: 30,
      key: PageStorageKey("saveIt"),
      itemBuilder: (context,index){
        return Text("$index");
      },
      separatorBuilder: (BuildContext context,int index){
        return Divider();
      },
    )),
    CompoundedTab(Tab(
      icon: Icon(Icons.map),
    ), Icon(Icons.map)),
    CompoundedTab(Tab(
      icon: Icon(Icons.add),
    ), Icon(Icons.add))

  ];
}