import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  InputFormField({
    super.key,
    required this.hintText,
    required this.ErrMess,
    required this.obscureText,
    required this.controller,
    this.iconContent,
  });

  final hintText, ErrMess, iconContent;

  final TextEditingController controller;

  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$ErrMess';
        }

        return null;
      },
      decoration: InputDecoration(
        // border: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey,
        hintStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
        hintText: '$hintText',
        contentPadding: const EdgeInsets.all(20.0),
        suffixIcon: iconContent,
      ),
    );
  }
}
