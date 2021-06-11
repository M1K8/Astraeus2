import 'package:flutter/material.dart';
import '../screens/home.dart';
import './login.dart';
import 'dart:async';
import 'package:qlevar_router/qlevar_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void getLoggedIn() async {
    await Future.delayed(const Duration(seconds: 5), () => "1");
    QR.navigator.replaceAll('/home');
    //Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();
    getLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text('loading'),
      ),
    );
  }
}
