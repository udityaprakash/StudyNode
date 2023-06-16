

import 'dart:ui';

import 'package:flutter/material.dart';

Widget NavText(
    String tex, BuildContext context) {
  return Text(
    tex,
    style: TextStyle(
      fontFamily: 'Play',
      fontSize: MediaQuery.of(context).size.width/12,
      color: Color.fromRGBO(122, 174, 227, 1),
      fontVariations: <FontVariation>[FontVariation('wght', 800)],
    ),
  );
}

Widget Pagetext(
    String tex, double weit, Color co, BuildContext context) {
  return Text(
    tex,
    style: TextStyle(
      fontFamily: 'Quicksand',
      fontSize: MediaQuery.of(context).size.width/15,
      color: co,
      fontVariations: <FontVariation>[FontVariation('wght', weit)],
    ),
  );
}

Widget InputFieldgenerator(String hinttxt, BuildContext context,
    {controller, maxlines, functi, check}) {
  return Container(
    
    height: MediaQuery.of(context).size.height / 20,
    width: MediaQuery.of(context).size.width * 0.7,
    child: TextFormField(
      // maxLines: 1,
      autofocus: true,
      controller: controller,
      onChanged: check,
      style: const TextStyle(
        fontSize: 20,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w700,
      ),
      validator: functi,
      decoration: InputDecoration(
          isDense: true,
          hintText: hinttxt,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(122, 174, 227, 1),
              fontSize: 20,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w700),
          fillColor: Color.fromRGBO(150, 150, 150, 0.37),
          filled: true,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
    ),
  );
}