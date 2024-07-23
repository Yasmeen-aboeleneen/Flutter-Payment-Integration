// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    Key? key,
    required this.formKey,
    required this.autovalidateMode,
  }) : super(key: key);
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardHolderName = '', cardNumber = '', cvvCode = '', expiryDate = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardHolderName: cardHolderName,
          cardNumber: cardNumber,
          cvvCode: cvvCode,
          expiryDate: expiryDate,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (CreditCardModel) {
            cardHolderName = CreditCardModel.cardHolderName;
            cardNumber = CreditCardModel.cardNumber;
            cvvCode = CreditCardModel.cvvCode;
            expiryDate = CreditCardModel.expiryDate;
            showBackView = CreditCardModel.isCvvFocused;

            setState(() {});
          },
          formKey: widget.formKey,
        )
      ],
    );
  }
}
