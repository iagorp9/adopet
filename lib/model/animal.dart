import 'package:adopet/model/dao.dart';

class Animal {
  // Propriedades da classe
  String name;
  String age;
  String photo;
  String type;
  String sex;
  

  // Construtor da classe
  Animal({
    required this.name,
    required this.age,
    required this.photo,
    required this.type,
    required this.sex,
    
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'type': type,
      'sex': sex,
    };
  }

  factory Animal.fromMap(Map<String, dynamic> map) {
    return Animal(
      name: map['name'],    
      age: map['age'],     
      photo: map['photo'],
      type: map['type'],
      sex: map['sex'],
      
    );
  }
}
