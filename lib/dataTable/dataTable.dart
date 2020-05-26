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
  @override
  var _selected;
  void initState() {
    // TODO: implement initState
    super.initState();
    _selected=_getSelected();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          DataTable(
    columns: [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Student Identification")),
          DataColumn(label: Text("grade")),
          ],
            rows:_getData(),
    ),
        ],
      )
    );
  }
  List<DataRow> _getData(){
    List<DataRow> rows=[];
    for(int i=0;i<_getStudents().length;i++){
      rows.add(
          DataRow(
              selected: _selected[i],
              onSelectChanged: (v){
                _selected[i]=v;
                setState(() {

                });
              },
              cells:[
                DataCell(
                  Text("${_getStudents()[i].name}"),
                ),
                DataCell(
                  Text("${_getStudents()[i].studentID}"),
                ),
                DataCell(
                  Text("${_getStudents()[i].grade}"),
                ),
              ])
      );
    }
    return rows;
  }

}
class Student{
  var name;
  var studentID;
  var grade;
  Student(this.name, this.studentID, this.grade);

}
List<Student> _getStudents(){
  return [
    Student("foo", "12311", 23.6),
    Student("bar", "12312", 23),
    Student("bob", "12313", 53),
  ];
}
List<bool> _getSelected(){
  return [
    true,false,true
  ];
}