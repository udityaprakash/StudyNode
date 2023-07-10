import 'dart:io';
import 'dart:ui';

import 'package:edumarshal/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget NavText(String tex, BuildContext context) {
  return Text(
    tex,
    style: TextStyle(
      fontFamily: 'Play',
      fontSize: MediaQuery.of(context).size.width / 12,
      color: Color.fromRGBO(122, 174, 227, 1),
      fontVariations: <FontVariation>[FontVariation('wght', 800)],
    ),
  );
}

Widget Pagetext(String tex, double weit, Color co, BuildContext context) {
  return Text(
    tex,
    style: TextStyle(
      fontFamily: 'Quicksand',
      fontSize: MediaQuery.of(context).size.width / 15,
      color: co,
      fontVariations: <FontVariation>[FontVariation('wght', weit)],
    ),
  );
}

Widget InputFieldgenerator(String hinttxt, BuildContext context,
    {controller, maxlines, obscure, check,Function}) {
  bool odscure;
  return Container(
    height: MediaQuery.of(context).size.height / 20,
    width: MediaQuery.of(context).size.width * 0.7,
    child: TextField(
      maxLines: 1,
      // maxLength: 9,
      obscureText: (obscure == null) ? false : true,
      autofocus: false,
      controller: controller,
      onChanged: check,
      style: const TextStyle(
        fontSize: 20,
        fontFamily: 'Play',
        fontWeight: FontWeight.w700,
      ),
      decoration:fielddesign(hinttxt)
    ),
  );
}

InputDecoration fielddesign(text){
  return InputDecoration(
          isDense: true,
          labelText: text,
          labelStyle: TextStyle(
              color: navtextcolor,
              fontSize: 20,
              fontFamily: 'Play',
              fontWeight: FontWeight.w700),
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
        fontFamily: 'Play',
        fontWeight: FontWeight.w700,
      ),
      obscureText: _passwordVisible,
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
              fontFamily: 'Play',
              fontWeight: FontWeight.w700),
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
    width:MediaQuery.of(context).size.width * 0.6,
    child: ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonback,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
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
                fontFamily: 'Play',
                fontVariations: <FontVariation>[FontVariation('wght', 700)],
                fontSize: MediaQuery.of(context).size.width / 20),
          ),
        ),
      ),
    ),
  );
}

void Toastmsg({msg}){
  Fluttertoast.showToast(
          msg:msg,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          // backgroundColor: Color.fromARGB(206, 167, 140, 139),
          // textColor: Colors.yellow
  );
}

void Toasterrmsg({msg}){
  Fluttertoast.showToast(
          msg:msg,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: errorbgtoastmsg,
          // textColor: Colors.yellow
  );
}

