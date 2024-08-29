import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Constants/colors.dart';

class CustomCheckItem extends StatelessWidget {
  const CustomCheckItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: kveryWhite,
      child: CircleAvatar(
        radius: 44,
        backgroundColor: kDarkBrown,
        child: Icon(
          Icons.check_rounded,
          size: 35,
          color: kveryWhite,
        ),
      ),
    );
  }
}
