import 'package:flutter/material.dart';
import 'package:flutter_payments/Features/Widgets/custom_check_item.dart';
import 'package:flutter_payments/Features/Widgets/custom_dashed_line.dart';
import 'package:flutter_payments/Features/Widgets/thank_you_card.dart';

class LastScreenBody extends StatelessWidget {
  const LastScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Stack(clipBehavior: Clip.none, children: [
        const ThankYouCard(),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * .2 + 20,
          left: 20 + 10,
          right: 20 + 10,
          child: const CustomDashedLine(),
        ),
        Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.brown,
            )),
        Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.brown,
            )),
        const Positioned(
          left: 0,
          right: 0,
          top: -50,
          child: CustomCheckItem(),
        )
      ]),
    );
  }
}
