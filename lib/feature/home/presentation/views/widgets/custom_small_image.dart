import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomSmallImage extends StatelessWidget {
  const CustomSmallImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsPaths.book1),
            )),
      ),
    );
  }
}