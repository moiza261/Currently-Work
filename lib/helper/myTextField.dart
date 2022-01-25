import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  String hintText;
  double bottomSpacing;
  double topSpacing;
  double leftSpacing;

  TextEditingController textController = TextEditingController();
  MyTextField(
    this.hintText,
    this.bottomSpacing,
    this.leftSpacing,
    this.topSpacing,
    this.textController,
  );

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter Some Text';
          }
          return null;
        },
        controller: widget.textController,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(bottom: 16.0, top: 16.0, left: 15.0),
          fillColor: Colors.white,
          filled: true,
          hintText: widget.hintText.trim(),
          hintStyle: TextStyle(color: Colors.grey[700], fontFamily: "Poppins"),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.grey)),
        ),
      ),
    );
  }

  Widget textFieldpassword(
    String hintText,
    bool obsecureText,
    Function(String? value) onChange,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: TextFormField(
        onChanged: onChange,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter Some Text';
          }
          return null;
        },
        obscureText: obsecureText,
        controller: null,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              obsecureText = !obsecureText;
            },
            child: Icon(obsecureText ? Icons.visibility : Icons.visibility_off),
          ),
          contentPadding:
              const EdgeInsets.only(bottom: 2.0, top: 2.0, left: 15.0),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: "Poppins", color: Colors.grey[700]),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.transparent)),
        ),
      ),
    );
  }
}
