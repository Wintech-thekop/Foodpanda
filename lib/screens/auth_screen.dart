import 'package:flutter/material.dart';

import 'email_auth_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff2b85),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/auth_back.png",
                    height: 300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign up or Log in",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Select your prefered medthod to continue",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 58,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/google_icon.webp", width: 25),
                          Text(
                            "Continue with Google",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 58,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xff1878f3),
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/facebook_icon.png", width: 30),
                          Text(
                            "Continue with Facebook",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                        ),
                      ),
                      Text(
                        "   or   ",
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmailAuthScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 58,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffe21a70),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.mail_outline_outlined,
                            color: Color(0xffe21a70),
                          ),
                          Text(
                            "Continue with Email",
                            style: TextStyle(
                                color: Color(0xffe21a70),
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
