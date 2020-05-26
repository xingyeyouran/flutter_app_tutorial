import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  bool _ascending;
  List<Student> _students=[];
  // ignore: non_constant_identifier_names
  var _sorting_index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _students=_getStudents();
    _ascending=true;
  }
  _getDataTable()=>DataTable(
    sortAscending: _ascending,
    sortColumnIndex: _sorting_index,
    columns: [
      DataColumn(
        label: Text("Nmae")
      ),
      DataColumn(
          label: Text("ID"),
        onSort: (index,ascending){
            _sorting_index=index;
            _ascending=ascending;
            if(ascending){
              _students.sort((a,b)=>int.parse(a.id).compareTo(int.parse(b.id)));
            }
            else{
              _students.sort((a,b)=>int.parse(b.id).compareTo(int.parse(a.id)));
            }
            setState(() {

            });
        }
      ),
      DataColumn(
          label: Text("College")
      ),
      DataColumn(
          label: Text("Major")
      ),
      DataColumn(
          label: Text("Grade")
      ),
    ],
    rows:_getDataRows(),

  );
  _getDataRows(){
    List<DataRow> rows=[];
    for(int i=0;i<_students.length;i++){
      rows.add(
        DataRow(
          cells: [
            DataCell(
              Text("${_students[i].name}")
            ),
            DataCell(
                Text("${_students[i].id}")
            ),
            DataCell(
                Text("${_students[i].college}")
            ),
            DataCell(
                Text("${_students[i].major}")
            ),
            DataCell(
                Text("${_students[i].grade}")
            ),

          ]
        )
      );

    }
    return rows;
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: _getDataTable(),
          )
        ],
      ),
    );
  }

}
class Student {
  var name;
  var id;
  var major;
  var college;
  var grade;

  Student(this.name, this.id, this.major, this.college, this.grade);

}
List<Student> _getStudents(){
  var r=Random();
  List<Student> students=[];
  for(int i=0;i<27;i++){
    if(i<=9){
      students.add(
          Student("A","20171420$i","Software Engineering","Tokyo university",60+double.parse(r.nextDouble().toStringAsFixed(1)))
      );
    }
    else{
      students.add(
          Student("A","2017142$i","Software Engineering","Tokyo university",60+double.parse(r.nextDouble().toStringAsFixed(1)))
      );
    }
  }
  return students;
}