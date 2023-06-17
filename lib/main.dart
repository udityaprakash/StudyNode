import 'package:edumarshal/components/constants.dart';
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
      initialRoute: '/splashpage',

      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(0, 255, 255, 255),
        // textTheme: Typography().white,
      ),
      // home: const Scaffold(
      //   body: Splashscreen(),
      // ),
    );
  }
}