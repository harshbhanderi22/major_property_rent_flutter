import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_property/screens/onboarding/onboarding_screen1.dart';

import 'package:on_property/utils/colorscheme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    init();
    // new Future.delayed(const Duration(seconds: 5), () {
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       builder: (BuildContext context) => IntroductionPage()
    //       // SignUpWithOptions()
    //       ));
    // });
  }

  Future<Timer> init() async {
    return Timer(const Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var status = _prefs.getBool('isLoggedIn') ?? false;
    print(status);
    // print(PreferencesKeys.token.isNotEmpty);
    print("----------------2--------");

    if (this.mounted) {
      if (status) {
        print("----------------3--------");
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (BuildContext context) =>
        Navigator.pushReplacementNamed(context, 'Dashboard');
        // ),
        //);
      } else {
        print("----------------4--------");
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => const IntroductionPage(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.4),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/house.jpg')),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/splash_img.png',
            height: 350,
            width: 350,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
