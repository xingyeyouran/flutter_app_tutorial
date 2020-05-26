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
class CustomizedHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(),
      drawer: CustomizedDrawer.getInstance(),
    );
  }
}
class CustomizedDrawer extends StatelessWidget{
  static final CustomizedDrawer _getDrawer=CustomizedDrawer();
  CustomizedDrawer();
  factory CustomizedDrawer.getInstance(){
    return _getDrawer;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            padding: EdgeInsets.fromLTRB(16,8,16,8),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 110,
                    child: FittedBox(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/72143797.jpg"),
                        radius: 100,
                      ),
                    ),
                  ),
                  Text("Nick name",
                  style: TextStyle(
                    fontSize: 15
                  ),),
                  Text("personal intruduction",
                  style: TextStyle(
                    fontSize: 12
                  ),),
                ],
              ),
          ),
          ListTile(
            title: Center(child: Text("wallet")),
            leading: Icon(Icons.account_balance_wallet),
          )

        ],
      ),
    );
  }

}