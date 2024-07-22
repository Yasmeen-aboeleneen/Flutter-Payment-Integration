import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_payments/Core/Utils/Styles/Styles.dart';

class OrderinfoItem extends StatelessWidget {
  const OrderinfoItem({
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
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.style18,
        )
      ],
    );
  }
}
