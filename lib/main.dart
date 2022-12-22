//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokeball_simulation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PokedexApp",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
