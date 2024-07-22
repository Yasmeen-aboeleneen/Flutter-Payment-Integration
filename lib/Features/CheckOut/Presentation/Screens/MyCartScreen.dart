import 'package:flutter/material.dart';
import '../../../../Core/Utils/Styles/Styles.dart';
import 'MyCartScreenBody.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          title: const Text('My Cart',
              textAlign: TextAlign.center, style: Styles.style25)),
              body:const MyCartScreenBody(),
    );
  }
}
