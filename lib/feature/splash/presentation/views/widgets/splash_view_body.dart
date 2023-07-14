import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  //to control the animation value as the animationController is get value from 0 - 1
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSliderAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AssetsPaths.logo),
              const Text(
                'Read Free Books',
                textAlign: TextAlign.center,
              )
            ],
          ),
        );
      },
    );
  }

  initSliderAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTranstionDuration);

    GoRouter.of(context).pushReplacement(AppRoutes.kHomeView);

    });
  }
}
