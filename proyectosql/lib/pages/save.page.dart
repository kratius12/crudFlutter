import 'package:flutter/material.dart';
import 'package:proyectosql/pages/list_page.dart';

class SavePage extends StatelessWidget{

  static const String ROUTE = '/save';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Guardar"),
      ),
    body: Container(
      child: _FormSave(),
    ),
    );
  }
}
class _FormSave extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  final tituloController = TextEditingController();
  final descripcionController = TextEditingController();
  final fechaPubController = TextEditingController();
  final precioController = TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: tituloController,
                            decoration: const InputDecoration(
                                hintText: 'Titulo',
                                hintStyle:
                                TextStyle(fontWeight: FontWeight.w600),
                                fillColor: Color.fromARGB(255, 198, 198, 198),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                filled: true),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "El titulo es requerido";
                              } else {
                                return null;
                              }
                            },
                          )),
                          Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: descripcionController,
                            decoration: const InputDecoration(
                                hintText: 'Descripción',
                                hintStyle:
                                TextStyle(fontWeight: FontWeight.w600),
                                fillColor: Color.fromARGB(255, 198, 198, 198),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                filled: true),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "la descripción es requerida";
                              } else {
                                return null;
                              }
                            },
                          )),Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: fechaPubController,
                            decoration: const InputDecoration(
                                hintText: 'Fecha de publicación',
                                hintStyle:
                                TextStyle(fontWeight: FontWeight.w600),
                                fillColor: Color.fromARGB(255, 198, 198, 198),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                filled: true)
                                ,validator: (value) {
                              if (value!.isEmpty) {
                                return "la fecha de publicación es obigatoria";
                              } else {
                                return null;
                              }}
                          )),
                      Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: precioController,
                            decoration: const InputDecoration(
                                hintText: 'Precio',
                                hintStyle:
                                TextStyle(fontWeight: FontWeight.w600),
                                fillColor: Color.fromARGB(255, 198, 198, 198),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                filled: true),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "El precio es requerido";
                              } else {
                                return null;
                              }
                            },
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: SizedBox(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(
                                            Icons.check_circle,
                                            color: Colors.purple,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Libro guarrdado con exito!!",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                          ),
                                        ],
                                      ),
                                      duration:
                                      const Duration(milliseconds: 2000),
                                      width: 300,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 10),
                                      behavior: SnackBarBehavior.floating,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(3.0),
                                      ),   
                                      backgroundColor: const Color.fromARGB(
                                          255, 12, 195, 106),
                                    ));
                                  }
                                  if (_formKey.currentState!.validate()) {
                                    print("Formaulario valido!");
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ListPage(
                                              )));
                                }},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  Colors.black, // background (button) color
                                  foregroundColor:
                                  Colors.white, // foreground (text) color
                                ),
                                child: const Text('Guardar')),
                          )),
                    ],
                  ))
    );
  }
}