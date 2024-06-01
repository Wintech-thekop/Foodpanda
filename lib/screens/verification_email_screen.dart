import 'package:flutter/material.dart';

import '../widgets/custom_text_button.dart';

class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() => _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only( bottom: 20),
                    child: Image.asset(
                      "assets/email_icon.png",
                      width: 80,
                    ),
                  ),
                  Text(
                    "Verify your Email address to get started",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "This help us to motogate fraud and keep your personal data",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
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
                    text: "Send the verificstion Email",
                    onPressed: () {
  //                    Navigator.push(
  //                      context,
  //                      MaterialPageRoute(
  //                        builder: (context) => LoginWithEmailScreen(),
  //                      ),
  //                    );
                    },
                    isDisabled: false,
                    ),
                SizedBox(height: 15),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}