import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_property/components/reusable_textfield.dart';
import 'package:on_property/components/social_media_button.dart';
import 'package:on_property/utils/colorscheme.dart';
import 'package:on_property/widgets/custom_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xfff3f3f4),
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* ....................................Log Back into your Account.....................*/
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'SIGN UP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Sign Up Now and Get The Best Deal'),
              Container(
                height: 5,
                width: 70,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              reusableTextField(hint: 'Enter your Username'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 5,
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
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              /* ..........................Sign In Now Button....................*/

              CustomButton(
                callback: () {
                  Navigator.pushNamed(context, 'Dashboard');
                },
                title: 'Sign Up Now',
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
              /* ..........................Row of Two Containers.........................*/

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

              /* ........................Row of Don't have an account text..................*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account? ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'SignIn');
                      },
                      child: Text(
                        'Sign In',
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
