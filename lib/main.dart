import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/sales_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/sales': (context) => SalesPage(),
      },
    );
  }
}
