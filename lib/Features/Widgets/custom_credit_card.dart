import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardHolderName = '', cardNumber = '', cvvCode = '', expiryDate = '';

  bool showBackView = false;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CreditCardWidget(
            cardHolderName: cardHolderName,
            cardNumber: cardNumber,
            cvvCode: cvvCode,
            expiryDate: expiryDate,
            showBackView: showBackView,
            onCreditCardWidgetChange: (value) {},
          ),
          CreditCardForm(
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
              formKey: formKey)
        ],
      ),
    );
  }
}
