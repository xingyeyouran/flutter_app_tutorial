
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  bool _agreeBestowRight;
  int _count;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadAgreement();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text("fff")
          ],
        ),
      ),
    );
  }
  _loadAgreement() async{
    SharedPreferences preferences =await SharedPreferences.getInstance();
    _agreeBestowRight=preferences.getBool(RightsAlertDialog._showAgreementDialog)??false;
    if(!_agreeBestowRight){
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_)=>RightsAlertDialog()
      );
    }
}
}
class RightsAlertDialog extends StatefulWidget{
  static const _showAgreementDialog="AgreeDialog";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RightsAlertDialogState();
  }

}
class RightsAlertDialogState extends State<RightsAlertDialog>{
  _agreeRequest() async{
    if(_dontShowAnymore){
     SharedPreferences preferences=await SharedPreferences.getInstance();
     preferences.setBool(RightsAlertDialog._showAgreementDialog, true);
    }
  }

   var _dontShowAnymore;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dontShowAnymore=false;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(24, 20, 24, 0),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Text("Plase bestow our needy rights"),
          CheckboxListTile(
            value: _dontShowAnymore,
            title: Text("Don't ask me again"),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value){setState(()=>_dontShowAnymore=value);},
          )
        ],
      ),
      actions: <Widget>[
        FlatButton(
          child:Text("No"),
          onPressed:()=>Navigator.of(context).pop()),
        FlatButton(
            child:Text("Yes"),
            onPressed:(){
              _agreeRequest();
              Navigator.of(context).pop();
            })
      ],
    );
  }

}