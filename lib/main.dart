import 'dart:ui';

import 'package:flutter/material.dart';
import 'views/login.dart';
import 'views/splash.dart';
import 'screens/home.dart';
import 'package:layout/layout.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


void main() {
  runApp(MyApp());
}

final routes = [
  QRoute(name: "Splash", path: '/', builder: () => SplashScreen()),

  QRoute(path: '/home', builder: () => DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(children: [
          LoginScreen(),
          LoginScreen(),
          HomeScreen()
        ],),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.textIn,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Friends'),
            TabItem(icon: Icons.add, title: 'Groups'),
          ],
          onTap: (int i) => print('click index=$i'),
        )
      )
  )),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
    child: MaterialApp.router(
        routeInformationParser: QRouteInformationParser(),
        routerDelegate: QRouterDelegate(routes)
    )
    );
  }
}

