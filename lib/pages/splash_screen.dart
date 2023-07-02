import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movieticketbookingapp/pages/login_screen.dart';
import 'package:movieticketbookingapp/utils/mytheme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState(){
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut , reverseCurve: Curves.bounceInOut);
    _animationController.forward();
    super.initState();
    
    Timer(const Duration(milliseconds:2500 ), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen())));

  }

  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor:Colors.transparent ));
    return Scaffold(
      backgroundColor: MyTheme.splash,
      body: Container(
        child: Center(
          child: ScaleTransition(
          scale: _animation,
          child: SvgPicture.asset(
            'assets/icons/splash_icon.svg',
          height:80
        ),
        ),
      ),
    )
    );
  }
}

