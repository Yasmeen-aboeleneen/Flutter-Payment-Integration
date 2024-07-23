import 'package:flutter/material.dart';
import 'package:flutter_payments/Features/CheckOut/Presentation/Screens/Payment/payment_details_body.dart';
import 'package:flutter_payments/Features/Widgets/custom_AppBar.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BuildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsBody(),
    );
  }
}
