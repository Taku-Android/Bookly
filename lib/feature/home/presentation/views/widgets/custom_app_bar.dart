import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0 , right: 18.0 , bottom: 24.0),
      child: Row(
        children: [
          Image.asset(AssetsPaths.logo , width: 80, height: 80,),
          const Spacer(),
          IconButton(onPressed: (){} , icon: const Icon(FontAwesomeIcons.magnifyingGlass , size: 24,))
        ],
      ),
    );
  }
}
