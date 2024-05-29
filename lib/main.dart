import 'package:domotik_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 89, 194, 39),
          secondary: const Color.fromARGB(255, 55, 0, 179)
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 81, 149, 0),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
