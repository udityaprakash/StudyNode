import 'dart:ui';

import 'package:edumarshal/components/api/apifunctions.dart';
import 'package:edumarshal/components/constants.dart';
import 'package:edumarshal/components/designs.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';


class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  bool _isloading = false;
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
   bool _passwordVisible = true;
  // bool isOnline = await hasNetwork();
  @override
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset:false ,
      body: SafeArea(
        child: SingleChildScrollView(
          child:Container(
          width: width,
          height: height,
          alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [topgrad, bottomgrad],
              ),
            ),
          child: _isloading?CircularProgressIndicator():
                  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavText('Welcome Back', context),
            Pagetext('Login', 300, navtextcolor, context),
            SizedBox(height: 30),
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
                child: Inputpassfield('Password', _passwordVisible, context, () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          )
                          ),
                // InputFieldgenerator('Password', context,
                //     obscure: true, controller: _passController)),
            SizedBox(
              height: 20,
            ),
            _isloading
                ? CircularProgressIndicator():
                 buttongenerator('Login', context, () async {
                    setState(() {
                      _isloading = true;
                    });
                    final response = await login_in(
                        _usernameController.text, _passController.text);
                    setState(() {
                      _isloading = false;
                    });
                    print("response is :" + response[0]['error'].toString());
                    if (response[0]['error'] == true) {
                      Toastmsg(msg: response[0]['message']);
                    } else {
                      Toastmsg(msg: 'Welcome');
                    }
                  })
          ],
          ),
          ),
        ),
      ),
    );
  }
}
