
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
  var _animatedList=GlobalKey<AnimatedListState>();
  int _count;
  List<DataItem> _dataSet=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _count=0;
    Future.delayed(
        Duration(milliseconds: 900),
            (){
              _dataSet.add(DataItem("initial data"));
              _animatedList.currentState.insertItem(0,duration: Duration(milliseconds: 300));
              }
    );
  }
  Widget _buildItem(DataItem item, Animation animation) {
    return SizeTransition(
        sizeFactor: animation,
        child: Card(
          child: ListTile(
            title: Text(
              '${item.title}',
              style: TextStyle(fontSize: 20),
            ),
            trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () => _removeItem(item)),
          ),
        ));
  }
  _removeItem(DataItem item){
    _animatedList.currentState.removeItem(_dataSet.indexOf(item), (_,animation)=>_buildItem(item,animation));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: ()=>Future.delayed(Duration(milliseconds: 700),(){
          _dataSet.insert(0, DataItem("addtional data-$_count"));
          _count++;
          _animatedList.currentState.insertItem(0,duration: Duration(milliseconds: 700));
          setState(() {

          });
        }),

        child: AnimatedList(
          key: _animatedList,
          initialItemCount: _dataSet.length,
          itemBuilder: (context, index, animation) {
            return _buildItem(_dataSet[index], animation);
          },
        ),
      ),
    );
  }

}
class DataItem{
  var title;

  DataItem(this.title);
}