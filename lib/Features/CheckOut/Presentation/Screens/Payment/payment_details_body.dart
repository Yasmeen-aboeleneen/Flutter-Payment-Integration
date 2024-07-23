import 'package:flutter/material.dart';
import 'package:flutter_payments/Features/Widgets/custom_button.dart';
import 'package:flutter_payments/Features/Widgets/custom_credit_card.dart';
import 'package:flutter_payments/Features/Widgets/payment_methods.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethods()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          autovalidateMode: autovalidateMode,
          formKey: formKey,
        )),
        SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CustomButton(
                  buttonName: 'Pay',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  }),
            )))
      ],
    );
  }
}
