import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/route.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/firstpage',

      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 204, 229, 252),
        textTheme: Typography().white,
      ),
      // home: const Scaffold(
      //   body: Splashscreen(),
      // ),
    );
  }
}