import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waraq/constants.dart';
import 'package:waraq/core/utils.dart';
import 'package:waraq/features/home/presentation/views/home_view.dart';
import 'package:waraq/features/splash/presentaion/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; // range from 0 to 1
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo, width: 170, height: 170),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void initSlidingAnimation(){
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome(){
    Future.delayed(Duration(seconds: 2),() {
      Get.to(()=> HomeView(), transition: Transition.fade, duration: kTransitionDuration);
    },);
  }
}

