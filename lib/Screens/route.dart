import 'package:edumarshal/Screens/homescreen.dart';
import 'package:edumarshal/components/designs.dart';
import 'package:edumarshal/components/landingpage/edumar.dart';
import 'package:edumarshal/components/landingpage/homepageredirector.dart';
import 'package:edumarshal/components/splaashpage/splashpage.dart';
import 'package:provider/provider.dart';
import '../components/api/apifunctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
// import 'package:nb_utils/nb_utils.dart';
// import 'main';
// class RouteGenerator {
//   static Route<dynamic>? generateRoute(RouteSettings settings) {
//     // ignore: unused_local_variable
//     return MaterialPageRoute(builder: (context) {
//     final args = settings.arguments;
//     final isOnline = Provider.of<ConnectivityProvider>(context).isOnline;
//     switch (settings.name) {
//       case '/firstpage':
//         return MaterialPageRoute(builder: (_) => const firstpage());
//       case '/splashpage':
//         return MaterialPageRoute(builder: (_) => const splashpage());
//       default:
//         return null;
//     }
//     //  return UnderConstruction();
//     });
//   }
// }

class CustomRoute {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      final bool isOnline = Provider.of<ConnectivityProvider>(context).isOnline;
      if (!isOnline) {
        return NoConnectionScreen();
      }
      switch (settings.name) {
        case "firstpage":
          // ignore: prefer_const_constructors
          return firstpage();
        case "homepageredirector":
          // ignore: prefer_const_constructors
          return home_page_redirector();
        case "splashpage":
          // ignore: prefer_const_constructors
          return splashpage();
        case "home":
          // ignore: prefer_const_constructors
          return home();  
      }

      // ignore: prefer_const_constructors
      return firstpage();
    });
  }
}

class No_Internet extends StatelessWidget {
  const No_Internet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('No Internet')),
    );
  }
}

class NoConnectionScreen extends StatefulWidget {
  const NoConnectionScreen({Key? key}) : super(key: key);

  @override
  _NoConnectionScreenState createState() => _NoConnectionScreenState();
}

class _NoConnectionScreenState extends State<NoConnectionScreen> {
  @override
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/error.png',
                fit: BoxFit.cover, height: double.infinity),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  NavText('No Internet', context),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 6,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
