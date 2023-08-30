import 'package:flutter/material.dart';
import 'package:proyectosql/db/operation.dart';
import 'package:proyectosql/pages/save.page.dart';

class ListPage extends StatelessWidget {

  static const String ROUTE = "/";

  @override
  Widget build(BuildContext context) {
    Operation.ListLibro();
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: (){
        Navigator.pushNamed(context, SavePage.ROUTE);
      },),
      appBar: AppBar(title: Text("Listado")),
      body: Container(child:ListView(children: <Widget>[ 
        ListTile(title: Text("Nota 1"),),
        ListTile(title: Text("Nota 1"),),
        ListTile(title: Text("Nota 1"),),
        ListTile(title: Text("Nota 1"),),
      ],)),
    );
  }
}