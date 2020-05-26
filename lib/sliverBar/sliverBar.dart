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
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_,__){
          return <Widget>[
            SliverAppBar(
              pinned: true,
              primary: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("images/fushimi.jpg",fit: BoxFit.fill,),
                centerTitle: true,
                title: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("伏見稲荷",style: TextStyle(fontSize: 20,color: Colors.white),),
                    Text("有名な神社",style: TextStyle(fontSize: 14,color: Colors.white),)
                  ],
                ),
          ),
              ),
          ];
        },
        body: ListView.separated(itemBuilder: (_,index){
          return Text("第$index"+"行");
        }, separatorBuilder: (_,__){
          return Divider();
        }, itemCount: 30),
      ),
    );
  }
  
}