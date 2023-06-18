import 'package:edumarshal/components/api/apifunctions.dart';
import 'package:edumarshal/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
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
    return ChangeNotifierProvider(
      create: (context) => ConnectivityProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splashpage',
    
        onGenerateRoute: CustomRoute.allRoutes,
        theme: ThemeData(
          scaffoldBackgroundColor: notchcolor,
          // textTheme: Typography().white,
        ),
        // home: const Scaffold(
        //   body: Splashscreen(),
        // ),
      ),
    );
  }
}