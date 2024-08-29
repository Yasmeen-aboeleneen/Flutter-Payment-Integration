import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Utils/Styles/Styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          FontAwesomeIcons.barcode,
          size: 60,
        ),
        Container(
          height: 58,
          width: 113,
          decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )),
          child: const Text(
            textAlign: TextAlign.center,
            'Paid',
            style: Styles.style24,
          ),
        )
      ],
    );
  }
}
