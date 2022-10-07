import 'package:adopet/model/animal.dart';
import 'package:adopet/repository/animal_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Addanimal extends StatefulWidget {
  const Addanimal({super.key});

  @override
  State<Addanimal> createState() => _AddanimalState();
}

class _AddanimalState extends State<Addanimal> {
  var _isObscure = true;
  final _formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final sexController = TextEditingController();
  final ageController = TextEditingController();
  final typeController = TextEditingController();

  
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar animal"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          if (_formkey.currentState!.validate()) {
            final animal = Animal(
              name: nameController.text,
              sex: sexController.text,
              age: ageController.text,
              type: typeController.text,
              photo: "assets/images/Thomas.jpg",
             
            );
            final result = await animalRepository.insertanimal(animal); 
            String message;
            if(result != 0){
              message = "Animal salvo com sucesso!!!";
            }else{
              message = "Lamento, não foi possível salvar o animal";
            }
            final snack = SnackBar(content: Text(message));
            var showSnackBar = ScaffoldMessenger.of(context).showSnackBar(snack);
          }
        },
        child: const Icon(
          Icons.save,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                validator: (text) => (text == null || text.length < 3)
                    ? "O nome do animal é inválido"
                    : null,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  label: Text("Nome do animal"),
                  icon: Icon(Icons.text_fields),
                ),
              ),
              TextFormField(
                controller: sexController,
                validator: (text) => (text == null || text.length < 3)
                    ? "O sexo do animal é inválido"
                    : null,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  label: Text("sex"),
                  icon: Icon(Icons.male),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: ageController,
                      validator: (text) => (text == null || text.length < 1)
                          ? "idade inválido"
                          : null,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        label: Text("Idade"),
                        icon: Icon(Icons.calendar_month),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: typeController,
                      validator: (text) => (text == null || text.length != 1)
                          ? "Raça inválida"
                          : null,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        label: Text("Raça"),
                        icon: Icon(Icons.pets),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            
            

            AppBar(
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {Navigator.pushNamed(context, "/add");},
                ), 
                IconButton(
                  icon: Icon(Icons.house),
                  onPressed: () {Navigator.pushNamed(context, "/");},
                ),
                IconButton(
                  icon: Icon(Icons.pets),
                  onPressed: () {Navigator.pushNamed(context, "/add");},
                ),
              ],
            ),
            ],
            
          ),
        ),
      ),
    );
  }
}
