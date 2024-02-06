import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Utils/Styles/Styles.dart';

class MyCartScreenBody extends StatelessWidget {
  const MyCartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My Cart',
              textAlign: TextAlign.center, style: Styles.style25)),
    );
  }
}
