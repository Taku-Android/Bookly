import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class AlsoLikeListItem extends StatelessWidget {
  const AlsoLikeListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0 , bottom: 20 , right: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .20,
        child: AspectRatio(
          aspectRatio: 3 / 4,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsPaths.book1),
                )),
          ),
        ),
      ),
    );
  }
}