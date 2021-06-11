import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class MainView extends StatefulWidget {
  const MainView({
    Key? key,
    required this.pageRoute
  }) : super(key: key);

  final String pageRoute;

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),
    );
  }
}
