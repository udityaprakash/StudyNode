import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
// import 'package:edumarshal/components/constants.dart';
// import 'package:edumarshal/components/designs.dart';
import 'package:edumarshal/components/landingpage/T4EditText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:lottie/lottie.dart';

import 'T4Button.dart';


Widget? Function(BuildContext, String) placeholderWidgetFn() => (_, s) => placeholderWidget();

Widget placeholderWidget() => Image.asset('assets/images/placeholder.jpg', fit: BoxFit.cover);

double? maxScreenWidth;
double? maxScreenHeight;
extension ContextExtensions on BuildContext {


double width() => maxScreenWidth ?? MediaQuery.of(this).size.width;
double height() => maxScreenHeight ?? MediaQuery.of(this).size.height;
}

class firstpage extends StatelessWidget {
  const firstpage({super.key});
  @override
  Widget build(BuildContext context) {
  var width = context.width();
  var height = context.height();
  const t4_bg = "https://i.pinimg.com/474x/69/44/39/694439b3031503a7564eda9e24f673eb.jpg";
  const t4_hint_Email = "Email";
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: t4_bg,
            // placeholder: (context, url) => const CircularProgressIndicator(),
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Color(0XD5160336), Color(0XD5160336)],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(left: 24, right: 24, top: height * 0.1),
                child: Column(
                  children: <Widget>[
                    
                    CachedNetworkImage
                    (
                      // placeholder: placeholderWidgetFn() as Widget Function(BuildContext, String)?,
                      imageUrl: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000&q=80', width: width / 3.2,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                    ),
                    SizedBox(height: 40),
                    T4EditText(hint: t4_hint_Email, isPassword: false),
                    SizedBox(height: 24),
                    T4EditText(hint: 'Password', isSecure: true),
                    SizedBox(height: 24),
                    T4Button(
                      textContent:'Login',
                      onPressed: () {},
                    ),
                    SizedBox(height: 48),
                    text('- - - - - Login With - - - - -', textColor: t4_white, fontFamily: fontMedium, fontSize: textSizeLargeMedium),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: width / 7,
                          height: width / 7,
                          padding: EdgeInsets.all(width / 30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: t4_white,
                          ),
                          child: SvgPicture.asset('assets/images/t4_google.svg', 
                          color: t4_form_google
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          width: width / 7,
                          height: width / 7,
                          padding: EdgeInsets.all(width / 30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: t4_white,
                          ),
                          child: SvgPicture.asset('assets/images/t4_fb.svg', 
                          color: t4_form_facebook
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );

    // return Scaffold(
    //   body: SafeArea(
    //       child: Container(
    //         width: width,
    //         height: height,
    //         decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //             begin: Alignment.topCenter,
    //             end: Alignment.bottomRight,
    //             colors: [
    //               Color.fromARGB(255, 20, 60, 161),
    //               bottomgrad
    //             ],
    //           ),
    //         ),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             NavText('Welcome Back', context),
    //             Pagetext('Login', 300, navtextcolor, context),
    //             SizedBox(height: 30),
    //             const TextField(
    //               obscureText: true,
    //               decoration: InputDecoration(
    //                 border: OutlineInputBorder(),
    //                 labelText: 'Username',
    //               ),
    //             ),
    //             SizedBox(height: 30),

    //             const TextField(
    //               obscureText: true,
    //               decoration: InputDecoration(
    //                 border: OutlineInputBorder(),
    //                 labelText: 'Password',
    //               ),
    //             ),
    //           ],
    //         ),
    //       )
    //   ),
    // );
  }
}
