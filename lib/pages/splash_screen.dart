import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movieticketbookingapp/utils/mytheme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.splash,
      body: Container(
        child: Center(child: SvgPicture.asset('assets/icons/splash_icon.svg'),
        ),

      ),
    );
  }
}

