import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Utils/Styles/Styles.dart';
import 'package:flutter_payments/Features/Widgets/payment_info.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 672,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: const Padding(
        padding: EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank You',
              style: Styles.style25,
            ),
            Text(
              'Your Transaction was successful',
              style: Styles.style20,
            ),
            SizedBox(
              height: 42,
            ),
            PaymentInfo(
              title: 'Date',
              value: '12/10/2024',
            ),
            SizedBox(
              height: 20,
            ),
            PaymentInfo(
              value: 'Time',
              title: '10:15 pm',
            ),
            SizedBox(
              height: 20,
            ),
            PaymentInfo(
              value: 'To',
              title: 'Ayla',
            )
          ],
        ),
      ),
    );
  }
}
