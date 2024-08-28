import 'package:flutter/material.dart';

class CustomCheckItem extends StatelessWidget {
  const CustomCheckItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 44,
        backgroundColor: Colors.brown,
        child: Icon(
          Icons.check_rounded,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}
