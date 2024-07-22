import 'package:flutter/material.dart';
import 'package:flutter_payments/Features/CheckOut/Presentation/Screens/Payment/payment_details.dart';
import 'package:flutter_payments/Features/Widgets/custom_button.dart';
import 'package:flutter_payments/Features/Widgets/orderInfo_item.dart';
import 'package:flutter_payments/Features/Widgets/total_Price.dart';

class MyCartScreenBody extends StatelessWidget {
  const MyCartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Image.asset(
            'Assets/Images/basket_image.png',
          )),
          const SizedBox(
            height: 20,
          ),
          const OrderinfoItem(
            title: 'SubTotal',
            value: '120 EGP',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderinfoItem(
            title: 'Discount',
            value: '0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderinfoItem(
            title: 'Shipping',
            value: '20 EGP',
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 2,
              height: 39,
              color: Color.fromARGB(255, 153, 85, 64),
            ),
          ),
          const TotalPrice(
            title: 'Total Price',
            value: '140 EGP',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            buttonName: 'Complete Payment',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const PaymentDetails();
              }));
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
