import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageLink});

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageLink,

        )
      ),
    );
  }
}


/*
Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // image:  DecorationImage(
            //   fit: BoxFit.fill,
            //   image: NetworkImage(imageLink),
            // )
    ),
        child: Image.network(
          imageLink,
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              // Image is fully loaded
              return child;
            } else {
              // Image is still loading, show the local placeholder image
              return Image.asset(
                'assets/images/loading.png',
                fit: BoxFit.contain, // Adjust this property based on your needs
              );
            }
          },
          errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
            // Handle error case, show the local placeholder image or an error message
            return Image.asset(
              'assets/images/loading.png',
              fit: BoxFit.contain,
            );
          },
          fit: BoxFit.contain, // Adjust this property based on your needs
        ),
      ),
 */