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
class CustomizedHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: RaisedButton(
        child: Text("tap it!"),
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (context){
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text("menu"),
                    trailing: CloseButton(),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: _getMenuList().length,
                      separatorBuilder: (_,__){
                        return Divider();
                      },
                      itemBuilder: (_,index){
                        return _getMenuList()[index];
                      },
                    ),
                  )
                ],
              );
            }

          );
        },
      ),
    );
  }

}
List<Widget> _getMenuList(){
  return[
    Text("A"),
    Text("B"),
    Text("C"),
    Text("D"),
    Text("E"),
    Text("F"),
    Text("G"),
    Text("H"),
    Text("I"),
    Text("J"),
    Text("J"),
    Text("J"),
    Text("J"),
    Text("J"),
    Text("J"),



  ];
}