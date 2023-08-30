class Libro{
  final int?  id;
  final String titulo;
  final String descripcion;
  final String fechaPub;
  final String precio;

  Libro({this.id, required this.titulo, required this.descripcion, required this.fechaPub, required this.precio} );

  Map<String, dynamic>toMap(){
    return {'id': id, 'titulo':titulo,'descripcion':descripcion,'fechaPub':fechaPub,'precio':precio};
  }
}