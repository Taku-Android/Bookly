import 'package:flutter/material.dart';
import '../custom_small_image.dart';

class AlsoLikeListItem extends StatelessWidget {
  const AlsoLikeListItem({super.key, required this.imageUrl});

  final String  imageUrl ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0 , bottom: 20 , right: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .30,
        child:  CustomSmallImage(imageUrl: imageUrl,),
      ),
    );
  }
}

