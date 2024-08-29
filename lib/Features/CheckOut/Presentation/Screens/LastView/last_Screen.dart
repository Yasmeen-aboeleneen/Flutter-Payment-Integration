import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Constants/colors.dart';
import 'package:flutter_payments/Features/CheckOut/Presentation/Screens/LastView/last_screen_body.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kDarkBrown),
      ),
      backgroundColor: Colors.brown,
      resizeToAvoidBottomInset: false,
      body: Transform.translate(
          offset: const Offset(0, -16), child: const LastScreenBody()),
    );
  }
}
