import 'package:adopet/screens/add_animal/add_animal.dart';
import 'package:adopet/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp(
    
    MaterialApp(
      title: "Adopet",
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/add": (context) => const Addanimal(),
      },
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.orange,
          secondary: Colors.orange,
        ),
        
      ),
      
    ),
    
  );
}
