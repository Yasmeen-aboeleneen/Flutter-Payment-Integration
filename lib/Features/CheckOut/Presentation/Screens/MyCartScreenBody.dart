import 'package:flutter/material.dart';
import 'package:flutter_payments/Core/Components/custom_button.dart';
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
          Expanded(child: Image.asset('Assets/Images/basket_image.png')),
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
          const Divider(
            thickness: 2,
            height: 35,
            color: Colors.black,
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
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
