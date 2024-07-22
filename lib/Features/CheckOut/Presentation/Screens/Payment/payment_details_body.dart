import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 103,
          height: 62,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              shadows: const [
                BoxShadow(
                    color: Color.fromARGB(255, 153, 85, 64),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(0, 0))
              ]),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: SvgPicture.asset(
                'Assets/SVG/card.svg',
                height: 28,
              ),
            ),
          ),
        )
      ],
    );
  }
}
