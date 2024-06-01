import 'package:flutter/material.dart';

class FillAccountInfoScreen extends StatefulWidget {
  const FillAccountInfoScreen({super.key});

  @override
  State<FillAccountInfoScreen> createState() => _FillAccountInfoScreenState();
}

class _FillAccountInfoScreenState extends State<FillAccountInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xffff2b85),
      ),
    );
  }
}
