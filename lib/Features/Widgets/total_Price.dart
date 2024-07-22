// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../Core/Utils/Styles/Styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style20,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.style20,
        )
      ],
    );
  }
}
