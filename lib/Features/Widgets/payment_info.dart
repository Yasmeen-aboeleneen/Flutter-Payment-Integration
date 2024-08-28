import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Utils/Styles/Styles.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.styleBold18,
        ),
      ],
    );
  }
}
