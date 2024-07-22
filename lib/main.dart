import 'package:flutter/material.dart';
import 'package:flutter_payments/Features/CheckOut/Presentation/Screens/MyCartScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Check Out App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyCartScreen(),
    );
  }
}
