import 'package:flutter/material.dart';
import 'package:on_property/components/social_media_button.dart';
import 'package:on_property/widgets/custom_button.dart';

class SignUpWithOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,

                image: AssetImage('assets/images/apartement.jpg'))),
        child: Container(
            color: Colors.black.withOpacity(0.4), child: mainBody(context)),
      ),
    );
  }

  mainBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),

          Text(
            'Hello There ',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),

          SizedBox(
            height: 5,
          ),

          Text('Let\'s Sign Up To Continue',
              style: TextStyle(color: Colors.white)),

          Container(
            height: 5,
            width: 70,
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.40,
          ),
          /*......................Row of Social Media Button Containers..............................*/
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              socialMediaButton(
                  img: 'assets/icons/google.png',
                  callback: () {},
                  text: 'Google'),
              socialMediaButton(
                  img: 'assets/icons/fb.png',
                  callback: () {},
                  text: 'Facebook'),
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
              child: Text(
            'Sign Up With',
            style: TextStyle(color: Colors.white),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

         /* ........................Container for Sign up with email or phone....................*/
          CustomButton(title:  'Sign Up With Email or Phone',callback:() {
            Navigator.pushNamed(context, 'SignUp');
          }, ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'SignIn');
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


}
