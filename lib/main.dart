import 'package:flutter/material.dart';
import 'package:habaibahmed/contact.dart';
import 'package:habaibahmed/experience.dart';
import 'package:habaibahmed/formation.dart';
import 'home_page.dart';
import 'package:habaibahmed/map.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes={
    '/Home': (context)=>home_page(),
    '/Formation': (context)=>FormationPage(),
    '/Exp': (context)=>ExperiencePage(),
    '/Contact': (context)=> ContactPage(),
    '/Map': (context)=> MapPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon CV Personnel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: home_page(),
      routes: routes,
    );
  }
}