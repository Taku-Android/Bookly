import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomSmallImage extends StatelessWidget {
  const CustomSmallImage({
    super.key, required this.imageUrl,
  });

  final String imageUrl ;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}