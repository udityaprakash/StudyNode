import 'dart:ui';

import 'package:edumarshal/components/constants.dart';
import 'package:edumarshal/components/designs.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});
  @override
  Widget build(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 20, 60, 161),
                  bottomgrad
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavText('Welcome Back', context),
                Pagetext('Login', 300, navtextcolor, context),
                SizedBox(height: 30),
                InputFieldgenerator('Username', context)
              ],
            ),
          )
      ),
    );
  }
}
