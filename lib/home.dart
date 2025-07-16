import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomePage()
       
    );
  }
}