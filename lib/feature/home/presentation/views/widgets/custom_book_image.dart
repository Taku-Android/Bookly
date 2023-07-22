import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageLink});

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageLink),
              //AssetImage(AssetsPaths.book1),
            ),),
      ),
    );
  }
}
