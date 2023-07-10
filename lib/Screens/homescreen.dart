// import 'dart:html';

import 'package:edumarshal/components/api/apifunctions.dart';
import 'package:edumarshal/components/constants.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: notchcolor,
          centerTitle: true,
          title: Text(
            'StudyNode',
            style: TextStyle(
                fontFamily: 'Play',
                fontSize: MediaQuery.of(context).size.width / 15),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              iconSize: 30,
              onPressed: () async {
                try{
                  await storage.deleteAll();
                  Navigator.pushReplacementNamed(context, 'firstpage');
    
                  }catch(e){
    
                  Toastmsg(msg: 'Logout Was Failed');
                }
              },
            ),
          ],
        ),
        body: Padding(padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
          Container(
            height: 45,
            decoration: BoxDecoration(color: Colors.black38, borderRadius: BorderRadius.circular(25)),
            child: TabBar(
              indicator: BoxDecoration(color: homescrcolor().nav_label_color,borderRadius: BorderRadius.circular(25)),
              tabs: [
              Tab(text: 'Attendence'),
              Tab(text: 'PDP',)
            ]),),
            
        ],),),
      ),
    );
  }
}
