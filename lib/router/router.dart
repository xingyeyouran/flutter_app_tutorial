
import 'package:flutter/material.dart';

main()=>runApp(AppEntrance());

class AppEntrance extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        MainBody.location: (context) {
          return MainBody();
        },
        ShoppingCart.Location: (context) => ShoppingCart()
      },
    );
  }

}
class MainBody extends StatelessWidget{
  final  Commodity commodity=new Commodity("pancake", "1223");
  static const String location='/';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
        ),
        title: Text("commodity center"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){
            Navigator.pushNamed(context,
                ShoppingCart.Location,
              arguments: commodity,
            );
          })

        ],

      ),
      body: Center(
        child: Text("you are in commodity page now!",
        style: TextStyle(
          fontSize: 27
        )),
      ),
    );
  }
}
class ShoppingCart extends StatelessWidget{
  static const String Location="/cart";

  @override
  Widget build(BuildContext context) {
   Commodity commodity =  ModalRoute.of(context).settings.arguments;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("cart: "+"${commodity.name}"),
      ),
    );
  }
}
class Commodity{
  String name;
  String serialNumber;

  Commodity(this.name, this.serialNumber);
}
