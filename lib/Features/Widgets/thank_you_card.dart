import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Constants/colors.dart';
import 'package:flutter_payments/Core/Utils/Styles/Styles.dart';
import 'package:flutter_payments/Features/Widgets/bottomWidget.dart';
import 'package:flutter_payments/Features/Widgets/cardInfoWidget.dart';
import 'package:flutter_payments/Features/Widgets/payment_info.dart';
import 'package:flutter_payments/Features/Widgets/total_Price.dart';

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
          color: kveryWhite,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank You',
              style: Styles.style25,
            ),
            const Text(
              'Your Transaction was successful',
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentInfo(
              title: 'Date',
              value: '12/10/2024',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentInfo(
              value: 'Time',
              title: '10:15 pm',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentInfo(
              value: 'To',
              title: 'Ayla',
            ),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(value: r'$50.59', title: 'Total'),
            const SizedBox(
              height: 30,
            ),
            const CardInfoWidget(),
            const Spacer(),
            const BottomWidget(),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20 / 2)) - 29,
            )
          ],
        ),
      ),
    );
  }
}
