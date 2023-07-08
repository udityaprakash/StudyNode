import 'package:edumarshal/components/api/apifunctions.dart';
import 'package:edumarshal/components/landingpage/edumar.dart';
import 'package:flutter/material.dart';

import '../../Screens/homescreen.dart';

class home_page_redirector extends StatefulWidget {
  const home_page_redirector({super.key});

  @override
  State<home_page_redirector> createState() => _home_page_redirectorState();
}

class _home_page_redirectorState extends State<home_page_redirector> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: user(),
      builder: (BuildContext context, AsyncSnapshot stored) {
        if (stored.data == null) {
          return firstpage();
        } else if (stored.hasData) {
          return home();
        } else {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        ;
      },
    );
  }
}
