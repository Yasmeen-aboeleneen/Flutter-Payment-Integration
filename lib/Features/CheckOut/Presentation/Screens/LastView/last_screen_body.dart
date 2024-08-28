import 'package:flutter/material.dart';

class LastScreenBody extends StatelessWidget {
  const LastScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          width: 350,
          height: 672,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * .2 + 20,
          left: 20 + 10,
          right: 20 + 10,
          child: Row(
            children: List.generate(
                17,
                (index) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          height: 4,
                          color: Colors.brown,
                        ),
                      ),
                    )),
          ),
        ),
        Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.brown,
            )),
        Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.brown,
            )),
        const Positioned(
          left: 0,
          right: 0,
          top: -50,
          child: CircleAvatar(
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
          ),
        )
      ]),
    );
  }
}
