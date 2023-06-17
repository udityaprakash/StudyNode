import 'dart:ui';

import 'package:flutter/material.dart';

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

Widget InputTxt(String text, bool obscure, BuildContext context, {controller}) {
  return TextField(
    controller: controller,
    obscureText: obscure,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.account_circle),
      hintText: text,
      // icon: Icon(Icons.account_circle,color: Color.fromARGB(255, 30, 111, 233)),
      // hintText: 'Hint Text',
      helperText: 'Helper Text',
      counterText: '0 characters',
      border: OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.circular(30.0)),
    ),

    onChanged: (value) {
      value = text;
    },
    // obscureText: true,
    // onSubmitted: (String value) async {
    //   await showDialog<void>(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: const Text('Thanks!'),
    //         content: Text(
    //             'You typed "$value", which has length ${value.characters.length}.'),
    //         actions: <Widget>[
    //           TextButton(
    //             onPressed: () {
    //               Navigator.pop(context);
    //             },
    //             child: const Text('OK'),
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // },
  );
}

Widget btn({func, text}) {
  return ElevatedButton(onPressed: () {

  }, 
  child: 
  Text('hrrr'));
}
