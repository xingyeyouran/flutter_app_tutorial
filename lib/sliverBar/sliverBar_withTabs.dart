
import 'package:flutter/material.dart';

main()=>runApp(AppEntrance());

class AppEntrance extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CustomizedHomePage(),
      darkTheme: ThemeData.dark(),
    );
  }

}
class CustomizedHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length: _getTabs().length, 
    child: Scaffold(
      body: NestedScrollView(headerSliverBuilder: (_,__){
        return <Widget>[
          SliverAppBar(
            pinned: true,
            primary: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/fushimi.jpg",fit: BoxFit.fill,),
              centerTitle: true,
              title: Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("伏見稲荷",style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text("有名な神社",style: TextStyle(fontSize: 14,color: Colors.white),)
                  ],
                ),
              ),
            ),
            bottom: TabBar(tabs: _getTabs().map((f)=>f.tab).toList()),
          )
        ];
      }, body: TabBarView(children: _getTabs().map((f)=>f.taBody).toList())),
    ),);
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