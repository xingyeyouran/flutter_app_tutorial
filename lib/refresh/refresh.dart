
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
class CustomizedHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CustomizedHomePageState();
  }

}
class CustomizedHomePageState extends State<CustomizedHomePage>{
  int _count;
  List<DataItem> _dataSet=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _count=0;
    Future.delayed(
      Duration(milliseconds: 900),
        (){setState(()=>_dataSet.add(DataItem("initial data")));}
        );
        }

  _getCardList(){
    List<Card> cardSet=[];
    for(int i=0;i<_dataSet.length;i++){
      cardSet.add(
          Card(
            child: ListTile(
              title: (Text("${_dataSet[i].title}")),
            ),
          )
      );
    }
    return cardSet;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: ()=>Future.delayed(Duration(milliseconds: 700),(){
         _dataSet.add(DataItem("addtional data-$_count"));
         _count++;
         setState(() {

         });
        }),

        child: ListView(
          children: _getCardList(),
        ),
      ),
    );
  }

}
class DataItem{
  var title;

  DataItem(this.title);
}