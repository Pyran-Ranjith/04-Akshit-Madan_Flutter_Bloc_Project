// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'features/home/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLC Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,

        primaryColor: Colors.teal,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: Home(),
      home: const Home(title: 'Ranjith\'s Grocery App'),
);
  }
}

