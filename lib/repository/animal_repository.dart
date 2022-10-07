import 'package:adopet/model/animal.dart';
import 'package:adopet/model/dao.dart';

class animalRepository{
  static final _table = "animals";
  static Future<int> insertanimal(Animal animal) async{
    final db = await DAO.getConnection();
    return await db.insert(_table,animal.toMap());
  }
  static Future <List<Animal>> findAll() async{
    final db = await DAO.getConnection();
    final elements = await db.query(_table);
    return elements.map(
      (element) => Animal.fromMap(element)
    ).toList();
  }
}