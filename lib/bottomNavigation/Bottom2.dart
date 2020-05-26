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
class CustomizedHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CustomizedHomePageState();
  }

}
class CustomizedHomePageState extends State<CustomizedHomePage>{
  var _currentIndex ;
  _onChangingPage(index){
    _currentIndex=index;
    setState(() {

    });
  }
  @override
  void initState() {
    _currentIndex=0;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("demo"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onChangingPage,
        type: BottomNavigationBarType.fixed,
        items: _getListItem().map((f)=>f.item).toList(),
        unselectedItemColor: Color.fromARGB(255,204,204,255),
        selectedItemColor: Color.fromARGB(255, 255, 204, 204),
        currentIndex: _currentIndex,
      ),
      body: PageView(
        onPageChanged: _onChangingPage,
        children: _getListItem().map((f)=> f.correspondBody).toList(),
      ),
    );
  }

}

class CompoundedNavigation {
  BottomNavigationBarItem item;
  Widget correspondBody;

  CompoundedNavigation(this.item, this.correspondBody);

}
List<CompoundedNavigation> _getListItem(){
  return [
    CompoundedNavigation(BottomNavigationBarItem(title: Text("Books"),
      icon: Icon(Icons.book),
      backgroundColor: Color.fromARGB(255,204,255,255),
    ),
        Center(
          child: Text("Books"),
        )
    ),
    CompoundedNavigation(BottomNavigationBarItem(title: Text("Shops"),icon: Icon(Icons.store_mall_directory),backgroundColor: Color.fromARGB(255,204,255,255),),Center(child: Text("Shops"),))
  ];
}