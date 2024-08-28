import 'package:flutter/material.dart';
import 'package:flutter_payments/Features/CheckOut/Presentation/Screens/LastView/last_screen_body.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.brown,
      resizeToAvoidBottomInset: false,
      body: LastScreenBody(),
    );
  }
}
