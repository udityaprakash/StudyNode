// import 'dart:html';

import 'package:edumarshal/components/api/apifunctions.dart';
import 'package:edumarshal/components/designs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final storage = new FlutterSecureStorage();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 81, 255, 1),
        centerTitle: true,
        title: Text(
          'StudyNode',
          style: TextStyle(
              fontFamily: 'Play',
              fontSize: MediaQuery.of(context).size.width / 10),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            iconSize: 30,
            onPressed: () async {
              await storage.deleteAll();

              final ar = await user();

              if (ar != null) {
                Toastmsg(msg: 'Logout Was Failed');
              }else{
                Navigator.pushReplacementNamed(context, 'firstpage');
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
