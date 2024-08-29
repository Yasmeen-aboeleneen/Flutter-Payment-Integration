import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Constants/colors.dart';
import 'package:flutter_svg/svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(23),
      height: 305,
      width: 73,
      decoration: ShapeDecoration(
        color: kDarkBrown,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)),
      ),
      child: Row(
        children: [
          SvgPicture.asset('Assets/SVG/master_card.svg'),
          const SizedBox(
            width: 16,
          ),
          const Text.rich(TextSpan(children: [
            TextSpan(text: 'Credit Card'),
            TextSpan(text: 'Master Card **7')
          ]))
        ],
      ),
    );
  }
}
