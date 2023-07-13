import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .50,
      child: AspectRatio(
        aspectRatio: 3/4,
        child: Container(
          decoration:  BoxDecoration(
            //color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              image:  const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsPaths.book1) , )
          ),
        ),
      ),
    );
  }
}
