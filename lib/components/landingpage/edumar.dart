import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});
  // const width = MediaQuery.of(context).size.width / 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 163, 196, 1),
        // centerTitle: true,
        title: Text(
          'Onclasses',
          style: TextStyle(
              // fontFamily: 'FoodoraFont',
              fontSize: MediaQuery.of(context).size.width / 20),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.sync),
        //     iconSize: 30,
        //     onPressed: () {
        //       // setState(() {});
        //     },
        //   ),
        // ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // width: size.width,
            // height: size.height,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // svggenerator(
                //   350,
                //   350,
                //   'assets/svg/logo.svg',
                // ),
                Text(
                  "getin itdbdbbdabszxdfcghbjkja",
                  style: TextStyle(
                    // fontFamily: ,
                    fontSize: 12,
                    color: Colors.black,
                    fontVariations: <FontVariation>[FontVariation('wght', 700)],
                  ),
                )

                // textgenerator(
                //     'Foodora', 60.0, 'FoodoraFont', 700, Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
