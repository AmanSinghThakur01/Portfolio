import 'package:flutter/material.dart';
import 'package:portfolio/screens/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          surface: Colors.purple.shade50,
        ),
        useMaterial3: true,
        fontFamily: "custom",
      ),
      home: const Portfolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}
