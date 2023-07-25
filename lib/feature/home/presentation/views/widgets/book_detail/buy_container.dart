import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class BuyContainer extends StatelessWidget {
  const BuyContainer({super.key, this.onPriceTap, this.onPreviewTap});

  final void Function()? onPriceTap ;
  final void Function()? onPreviewTap ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPriceTap,
          child: Container(
            width: 150,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Center(
                child: Text(
                  'Free',
                  style: Styles.textStyle20
                      .copyWith(color: Colors.black , fontWeight: FontWeight.w900),
                )),
          ),
        ),
        GestureDetector(
          onTap: onPreviewTap,
          child: Container(
            width: 150,
            height: 50,
            decoration: const BoxDecoration(
                color: Color(0xffEF8262),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: const Center(
                child: Text(
                  'Free preview',
                  style: Styles.textStyle16White,
                )),
          ),
        ),
      ],
    );
  }
}