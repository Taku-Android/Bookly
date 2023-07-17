import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            image:  const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsPaths.book1) , )
        ),
      ),
    );
  }
}
