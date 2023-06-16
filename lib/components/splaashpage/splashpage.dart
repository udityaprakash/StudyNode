import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../landingpage/edumar.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: AnimatedSplashScreen(
        nextScreen: firstpage(),
        splash: Container(
          child: Lottie.asset("assets/splashicon.json",
            width: 200,
            height: 300,
            fit: BoxFit.fill
        ),
        height: 300,),
        splashTransition: SplashTransition.fadeTransition,
        // pageTransitionType: PageTransitionType.bottomToTop
      )),
    );

  }
}
