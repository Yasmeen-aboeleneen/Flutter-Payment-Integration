import 'package:flutter/material.dart';
import 'package:flutter_payments/Features/Widgets/payment_methods.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [PaymentMethods()],
    );
  }
}
