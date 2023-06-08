import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  InputFormField({
    super.key,
    required this.hintText,
    required this.ErrMess,
    this.controller,
    this.iconContent,
  });

  final hintText, ErrMess, controller, iconContent;

  final TextEditingController _controll = TextEditingController();
  // final TextEditingController _confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controll,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$ErrMess';
        }

        // if (controller == '_confirmPass') {
        //   if (value != _pass.text) {
        //     return 'Not Match';
        //   }
        // }

        return null;
      },
      onChanged: (value) {
        if (controller == 'pass') {
          print(value);
        }
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
