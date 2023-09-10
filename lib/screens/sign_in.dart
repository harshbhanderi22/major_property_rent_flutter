import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_property/components/reusable_textfield.dart';
import 'package:on_property/components/social_media_button.dart';
import 'package:on_property/utils/colorscheme.dart';

import 'package:on_property/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xfff3f3f4),
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(), systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
/*....................................Log Back into your Account.....................*/
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'SIGN IN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Log Back Into Your Account'),
              Container(
                height: 5,
                width: 70,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              reusableTextField(hint: 'Enter Email Address'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              reusableTextField(hint: 'Enter Password'),
              SizedBox(
                height: 25,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'ForgotPassword');
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              /* ..........................Sign In Now Button....................*/
              CustomButton(
                callback: () async {
                  Navigator.pushNamed(context, 'Dashboard');
                  SharedPreferences _prefs =
                      await SharedPreferences.getInstance();
                  _prefs.setBool("isLoggedIn", true);
                },
                title: 'Sign In Now',
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Center(
                child: Text(
                  'or Continue With',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              /*  ..........................Row of Two Containers.........................*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  socialMediaButton(
                      img: 'assets/icons/google.png',
                      callback: () {},
                      text: 'Google',
                      color: Colors.grey.shade200),
                  socialMediaButton(
                      img: 'assets/icons/fb.png',
                      callback: () {},
                      text: 'Facebook',
                      color: Colors.grey.shade200),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),

              /*........................Row of Dont have an account text..................*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an Account? ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'SignUp');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
