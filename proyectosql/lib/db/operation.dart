import 'package:path/path.dart';
import 'package:proyectosql/models/Lib.dart';
import 'package:sqflite/sqflite.dart';

class Operation{
  static Future<Database> _openDB() async{
    return openDatabase(
      join(await getDatabasesPath(),'libreria.db'), onCreate: ((db, version) {
        return db.execute("CREATE TABLE libros(id INTEGER PRIMARY KEY, titulo TEXT, descripcion TEXT, fechaPub TEXT, precio TEXT)",
        );
      }));
  }
static Future<int> insertLibro(Libro libro) async{
  Database database = await _openDB();
  return database.insert('libros', libro.toMap());
}
static Future<List<Libro>> ListLibro ()async{
  Database database = await _openDB();

  final List<Map<String,dynamic>> librosMap = await database.query("libros");

for (var n in librosMap) {
  print("_____"+n['titulo']);
}
return List.generate(librosMap.length, (i) => Libro(id: librosMap[i],
titulo: librosMap[i],
 fechaPub: librosMap[i],
 precio: librosMap[i]));

}
}

