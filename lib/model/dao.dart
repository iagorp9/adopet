import 'package:sqflite/sqflite.dart';

class DAO {
  static Future<Database> getConnection() async{
    const dbName = "contactsdb.db";
    final dbPath = getDatabasesPath();
    final path = "$dbPath $dbName";

    final db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, _) async{
        const sql = "CREATE TABLE contacts(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, phone TEXT, cellphone TEXT, photo TEXT, password TEXT )";
        await db.execute(sql);
      },
    );
    return db;
  }
}