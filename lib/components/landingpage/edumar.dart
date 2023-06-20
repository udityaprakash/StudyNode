import 'dart:ui';

import 'package:edumarshal/components/api/apifunctions.dart';
import 'package:edumarshal/components/constants.dart';
import 'package:edumarshal/components/designs.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  TextEditingController _usernameController = new TextEditingController();
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
                  child: InputFieldgenerator('Username', context,
                      controller: _usernameController)),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  child: InputFieldgenerator('Password', context,
                      obscure: true, controller: _passController)),
              SizedBox(
                height: 20,
              ),
              _isloading
                  ? CircularProgressIndicator()
                  : buttongenerator('Login', context, () async {
                      // print("has net connection : "+ hasNetwork().toString());
                      setState(() {
                        _isloading = true;
                      });
                      final response = await login_in(
                          _usernameController.text, _passController.text);
                      setState(() {
                        _isloading = false;
                      });
                        print("response is :"+response[0]['error'].toString());
                      if (response[0]['error'] == true) {
                        Fluttertoast.showToast(
                            msg:response[0]['message'] ,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            // backgroundColor: Color.fromARGB(206, 167, 140, 139),
                            // textColor: Colors.yellow
                            );
                      }else{
                        Fluttertoast.showToast(
                            msg: 'Welcome',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            // backgroundColor: Color.fromARGB(206, 167, 140, 139),
                            // textColor: Colors.yellow
                            );

                      }

                      // getLoginData(username:_usernameController,password: _passController);
                    })
            ],
          ),
        ),
      ])),
    );
  }
}
