
 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/view/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

    );
  }
}