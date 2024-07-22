import 'package:flutter/material.dart';
import '../../../Widgets/custom_AppBar.dart';
import 'MyCartScreenBody.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(title: "My Cart"),
      body: const MyCartScreenBody(),
    );
  }

   
}
