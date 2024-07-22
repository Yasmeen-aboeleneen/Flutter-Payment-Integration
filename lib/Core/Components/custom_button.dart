import 'package:flutter/material.dart';

import 'package:flutter_payments/Core/Utils/Styles/Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonName,
    required this.onTap,
  }) : super(key: key);
  final String buttonName;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 58,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text(
          buttonName,
          style: Styles.style24,
        )),
      ),
    );
  }
}
