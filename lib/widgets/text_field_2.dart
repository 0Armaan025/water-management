import 'package:flutter/material.dart';

class MyNewTextField extends StatefulWidget {
  final String hintText;
  final bool isObscure;
  final TextEditingController controller;
  const MyNewTextField(
      {super.key,
      required this.hintText,
      required this.isObscure,
      required this.controller});

  @override
  State<MyNewTextField> createState() => _MyNewTextFieldState();
}

class _MyNewTextFieldState extends State<MyNewTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        style: TextStyle(
          color: Colors.black,
        ),
        controller: widget.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          labelText: widget.hintText,
          labelStyle: TextStyle(
            color: Colors.black,
          ),
        ),
        obscureText: widget.isObscure,
      ),
    );
  }
}
