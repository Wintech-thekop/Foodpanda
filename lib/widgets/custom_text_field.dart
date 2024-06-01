// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String labelText;
  bool noIcon;
  Function(String)? onChanged;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.noIcon = true,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      onChanged: widget.onChanged,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIconColor: Color(0xffe21a70),
        suffixIcon: widget.noIcon
            ? SizedBox()
            : IconButton(
                onPressed: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
                icon: isObsecure
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              ),
        labelText: widget.labelText,
        contentPadding: EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
    );
  }
}
