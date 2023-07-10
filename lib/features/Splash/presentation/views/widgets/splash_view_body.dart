import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../home/presentation/views/home_view.dart';

//if i will make animation so used statefulWidget (any changes during running  & have variables will take value)
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

//SingleTickerProviderStateMixin => to decide when make a refresh (to make animation move every second)
class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //animation from 0 => 1 in AnimationController
  late AnimationController animationController;
  //to get values from animationController (from 0 to 1) and get the values that i want (from 0 to 60 in sec)above the animationController
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    //Get => navigation & transition more easier
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    //must dispose the controller to prevent memory leaks
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //stretch => to make children take the all availlable width in screen (width of screen)
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        //to just rebuild this ui not all the app
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    //to get values offset from animationController (Offset.zero => to back to normal position) (will return animation object)
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    //when value changes make setState()
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(() => const HomeView(),
            transition: Transition.fade, duration: kTransitonDuration);
      },
    );
  }
}
