import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screen/shared/components/components.dart';

import '../../layout/homelayout/homelayout.dart';
import 'formlogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              child: const Image(
                image: AssetImage("assets/Logo.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text("Welcome Back",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black)),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
                "Log in to your account using email \n or social networks",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black)),
          ),
          SizedBox(
            height: 40,
          ),
          FormLogIn(),
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: Align(
              alignment: Alignment.topRight,
              child: Text("Forget Passworde"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          defaultButtn(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeLayout()));
              },
              title: "Login",
              width: 335),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or login with",
                    style: TextStyle(color: Colors.grey[700], fontSize: 14),
                  ),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          buttonIcon(
              width: 335,
              icon: Image(
                image: AssetImage("assets/google.png"),
                height: 24,
                width: 24,
              ),
              function: () {},
              title: "Sign in witth google"),
          SizedBox(
            height: 15,
          ),
          buttonIcon(
              width: 335,
              icon: Image(
                image: AssetImage("assets/facebook.png"),
                height: 24,
                width: 24,
              ),
              function: () {},
              title: "Sign in with Facebook"),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.center,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("First time here?"),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Color(0xff648286)),
                    child: Text("Signup"))
              ]),
            ),
          ),
        ],
      )),
    );
  }
}
