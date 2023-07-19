import 'dart:io';
import 'dart:ui';

import 'package:edumarshal/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget NavText(String tex, BuildContext context) {
  return Text(
    tex,
    style: TextStyle(
      fontFamily: 'Lato',
      fontSize: MediaQuery.of(context).size.width / 12,
      color: Color.fromRGBO(122, 174, 227, 1),
      fontVariations: <FontVariation>[FontVariation('wght', 800)],
    ),
  );
}

Widget Pagetext(
    {required String tex,
    required double weit,
    required Color co,
    required BuildContext context}) {
  return Text(
    tex,
    style: TextStyle(
      fontFamily: 'lato',
      fontSize: MediaQuery.of(context).size.width / 15,
      color: co,
      fontVariations: <FontVariation>[FontVariation('wght', weit)],
    ),
  );
}

Widget InputFieldgenerator(String hinttxt, BuildContext context,
    {controller, maxlines, obscure, check, Function}) {
  bool odscure;
  return Container(
    height: MediaQuery.of(context).size.height / 20,
    width: MediaQuery.of(context).size.width * 0.7,
    child: TextField(
        maxLines: 1,

        // maxLength: 9,
        obscureText: (obscure == null) ? false : true,
        autofocus: false,
        cursorOpacityAnimates: true,
        controller: controller,
        onChanged: check,
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w300,
        ),
        decoration: fielddesign(hinttxt)),
  );
}

InputDecoration fielddesign(text) {
  return InputDecoration(
      isDense: true,
      labelText: text,
      labelStyle: TextStyle(
          color: navtextcolor,
          fontSize: 20,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w300),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))));
}

Widget Inputpassfield(String hinttxt, bool _passwordVisible, context, funct,
    {controller}) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 15,
    child: TextField(
      maxLines: 1,
      controller: controller,
      style: const TextStyle(
        fontSize: 20,
        fontFamily: 'Lato',
        fontWeight: FontWeight.w300,
      ),
      obscureText: _passwordVisible,
      cursorOpacityAnimates: true,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility_off : Icons.visibility,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: funct,
        ),
        // hintText: hinttxt,
        labelText: hinttxt,
        labelStyle: TextStyle(
            color: navtextcolor,
            fontSize: 20,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w300),
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    ),
  );
}

// Widget InputTxt(String text, bool obscure, BuildContext context, {controller}) {
//   return TextField(
//     controller: controller,
//     obscureText: obscure,
//     decoration: InputDecoration(
//       prefixIcon: Icon(Icons.account_circle),
//       hintText: text,
//       helperText: 'Helper Text',
//       counterText: '0 characters',
//       border: OutlineInputBorder(
//           // borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
//           borderRadius: BorderRadius.circular(30.0)),
//     ),

//     onChanged: (value) {
//       value = text;
//     },
//   );
// }

Widget buttongenerator(String quote, BuildContext context, function) {
  return Container(
    height: MediaQuery.of(context).size.height / 16,
    width: MediaQuery.of(context).size.width * 0.7,
    child: ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonback,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          // side: const BorderSide(
          //     color: Colors.white),
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 100),
          child: Text(
            quote,
            style: TextStyle(
                letterSpacing: 2,
                color: Colors.white,
                fontFamily: 'Lato',
                fontVariations: <FontVariation>[FontVariation('wght', 700)],
                fontSize: MediaQuery.of(context).size.width / 20),
          ),
        ),
      ),
    ),
  );
}

void Toastmsg({msg}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    // backgroundColor: Color.fromARGB(206, 167, 140, 139),
    // textColor: Colors.yellow
  );
}

void Toasterrmsg({msg}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: errorbgtoastmsg,
    // textColor: Colors.yellow
  );
}

Widget Glassmorphism(
    {required double height,
    required double width,
    required Widget child,
    isboxstyle}) {
  if (isboxstyle == null) {
    isboxstyle = false;
  }
  return ClipRRect(
    child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: height,
          width: width,
          child: child,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white54, Colors.white10]),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: isboxstyle ? 15 : 0,
                    spreadRadius: isboxstyle ? -5 : 0)
              ],
              borderRadius: isboxstyle
                  ? BorderRadius.circular(15)
                  : BorderRadius.circular(0),
              border: Border.all(width: 2, color: Colors.white30)),
        )),
  );
}
