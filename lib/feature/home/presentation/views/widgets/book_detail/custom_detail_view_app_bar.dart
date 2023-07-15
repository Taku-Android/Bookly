import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDetailViewAppBar extends StatelessWidget {
  const CustomDetailViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        GestureDetector(
            onTap: (){
              GoRouter.of(context).pop();
            },
            child: const Icon(Icons.close)) ,
        const Spacer(),
        const Icon(Icons.shopping_cart_outlined)
      ],
    );
  }
}