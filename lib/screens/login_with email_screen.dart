import 'package:flutter/material.dart';
import 'package:food_panda/screens/verification_email_screen.dart';

import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_field.dart';
import 'fill_account_info_screen.dart';

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreenState();
}

class _LoginWithEmailScreenState extends State<LoginWithEmailScreen> {
//TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
//String emailText = '';
  String passText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xffff2b85),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 20),
                    child: Image.asset(
                      "assets/login_icon.png",
                      width: 60,
                    ),
                  ),
                  Text(
                    "Login with your Email",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Login with your password to wintech_thekop@hotmail.com or get a login link via Email",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    controller: passController,
                    labelText: "Password:",
                    noIcon: false,
                    onChanged: (value) {
                      setState(
                        () {
                          passText = value;
                        },
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "I forgot my password",
                      style: TextStyle(
                          color: Color(0xffe21a70),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: Colors.grey[300],
                ),
                CustomTextButton(
                    text: "Login with Password",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FillAccountInfoScreen(),
                        ),
                      );
                    },
                    isDisabled: passText.isEmpty),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerificationEmailScreen(),
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
                    child: Center(
                      child: Text(
                        "Send me a login link",
                        style: TextStyle(
                            color: Color(0xffe21a70),
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
