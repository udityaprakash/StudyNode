import 'dart:convert';
// import 'dart:ffi';
// import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:edumarshal/components/api/apiurls.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class ConnectivityProvider with ChangeNotifier {
  late bool _isOnline = false;
  bool get isOnline => _isOnline;
  ConnectivityProvider() {
    Connectivity _connectivity = Connectivity();
    _connectivity.onConnectivityChanged.listen((result) async {
      if (result == ConnectivityResult.none) {
        _isOnline = false;
        notifyListeners();
      } else {
        _isOnline = true;
        notifyListeners();
      }
    });
  }
}

Future getLoginData({username, password}) async {
  final String url = homeurl + query;
  var response = await http
      .post(Uri.parse(url), body: {'username': username, 'password': password});
  print(response.statusCode);
  if (response.statusCode == 200) {
    print(response.body);
    String data = response.body;
    var decodedData = jsonDecode(data);

    return decodedData;
  } else {
    print(response.statusCode);
  }
}

dynamic login_in(String username, String password) async {
  try {
    print("Attempting login :");

    String uri = homeurl;

    final json = {
      "username": username,
      "password": password
    };

    http.Response response = await http.post(Uri.parse(uri), body: json);

    var jsonResponse = jsonDecode(response.body);
    // print(jsonResponse);
    // final response = await http.post(Uri.https('api.naveenrao.com','/akgec/api.php',{ 'apicall':'getToken'}),
    //     headers: <String, String>{
    //       'Content-Type': 'application/json; charset=UTF-8',
    //     },

    //     body: jsonEncode(<String, String>{
    //       "username": username,
    //       "password": password,
    //     })
    //     );

    // final result = jsonDecode(jsonresponse.body);
    if (jsonResponse != null) {
      print("Response Recieved is: " + jsonResponse.toString());
    }
    return jsonResponse;
  } catch (err) {
    print("error caught: " + err.toString());
  }
}
