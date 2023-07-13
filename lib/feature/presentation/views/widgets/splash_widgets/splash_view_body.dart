import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController animationController ;
  //to control the animation value as the animationController is get value from 0 - 1
  late Animation<Offset> slidingAnimation ;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this ,
      duration: const Duration(seconds: 2)
    );

    slidingAnimation = Tween<Offset>(
        begin: const Offset( 0 , 2) ,
        end: Offset.zero 
    ).animate(animationController);

    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsPaths.logo),
          const Text('Read Free Books'  ,
            textAlign: TextAlign.center,)

        ],
      ),
    );
  }
}