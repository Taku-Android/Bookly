import 'package:flutter/material.dart';

class CustomDetailViewAppBar extends StatelessWidget {
  const CustomDetailViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.close) ,
        Spacer(),
        Icon(Icons.shopping_cart_outlined)
      ],
    );
  }
}