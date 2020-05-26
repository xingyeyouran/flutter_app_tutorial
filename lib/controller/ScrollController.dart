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
  var _scrollController=ScrollController();
  var _screenHeight;
  var _showBackButton=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener((){
      if((!_showBackButton) && _scrollController.offset>=_screenHeight){
        _showBackButton=true;
        setState(() {

        });
      }
      else if(_showBackButton && _scrollController.offset<_screenHeight){
        _showBackButton=false;
        setState(() {

        });

      }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    _screenHeight=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        child: ListView.separated(
          controller: _scrollController,
          itemBuilder: (_,index){
            return Text("第$index"+"回");
          },
          separatorBuilder: (_,__){
            return Divider();
          },
          itemCount: 49,
        ),
      ),
      floatingActionButton: _showBackButton
          ? FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          _scrollController.animateTo(.0, duration: Duration(milliseconds: 600), curve: Curves.ease);
        },
      ): null,
    );
  }

}