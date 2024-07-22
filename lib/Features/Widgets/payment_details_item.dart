import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsItem extends StatelessWidget {
  const PaymentDetailsItem({
    super.key,
    required this.isActive,
    required this.image,
  });

  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 600),
      width: 103,
      height: 62,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isActive
                    ? const Color.fromARGB(255, 153, 85, 64)
                    : const Color.fromARGB(255, 185, 185, 183),
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              borderRadius: BorderRadius.circular(15)),
          shadows: [
            BoxShadow(
                color: isActive
                    ? const Color.fromARGB(255, 153, 85, 64)
                    : Colors.white,
                blurRadius: 9,
                spreadRadius: 0,
                offset: const Offset(0, 0))
          ]),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: SvgPicture.asset(
            image,
            ),
        ),
      ),
    );
  }
}
