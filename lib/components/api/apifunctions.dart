import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';


class ConnectivityProvider with ChangeNotifier {
late bool _isOnline = false;
bool get isOnline => _isOnline;
ConnectivityProvider() {
Connectivity _connectivity = Connectivity();
_connectivity.onConnectivityChanged.listen((result) async {
if (result == ConnectivityResult.none){
_isOnline =false;
notifyListeners();

}
else {
_isOnline = true;
notifyListeners();
}
});
}
}

Future<bool> hasNetwork() async {
  try {
    final result = await InternetAddress.lookup('example.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  }
}