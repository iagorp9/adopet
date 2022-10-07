import 'package:adopet/model/list_of_animal.dart';
import 'package:adopet/screens/home/components/item_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        title: const Text("Porto alegre,Brasil"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(),
            Divider(),
            Divider(),
            Divider(),
            Image.asset('assets/images/Pug.jpg'),
            AppBar(
              title: const Text("Caramelo"),
            ),
            AppBar(
              title: const Text("Macho              Pug             6 meses"),
            ),
            AppBar(
               title: const Text("                       Adotar             "),
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
            
            
            AppBar(
              
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {Navigator.pushNamed(context, "/add");},
                ), 
                IconButton(
                  icon: Icon(Icons.house),
                  onPressed: () {Navigator.pushNamed(context, "/add");},
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
    );
  }
}
