import 'package:ecommerce_app/Views/Landing_Page.dart';
import 'package:flutter/material.dart';

import 'Views/categories_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ecommerce app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Landing_Page(),
    );
  }
}
