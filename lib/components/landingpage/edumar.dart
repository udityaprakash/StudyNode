import 'dart:ui';

import 'package:edumarshal/components/api/apifunctions.dart';
import 'package:edumarshal/components/constants.dart';
import 'package:edumarshal/components/designs.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// class firstpage extends StatelessWidget {
//   const firstpage({super.key});
//   @override
//   Widget build(BuildContext context) {

//   }
// }

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  bool _isloading = false;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  // bool isOnline = await hasNetwork();
  @override
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 20, 60, 161), bottomgrad],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavText('Welcome Back', context),
              Pagetext('Login', 300, navtextcolor, context),
              SizedBox(height: 30),
              // InputFieldgenerator('Username', context),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  child: InputFieldgenerator('Username', context)),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  child:
                      InputFieldgenerator('Password', context, obscure: true)),
              SizedBox(
                height: 20,
              ),
              buttongenerator('Login', context, () async {
                // print("has net connection : "+ hasNetwork().toString());
              })
            ],
          ),
        ),
      ])),
    );
  }
}
