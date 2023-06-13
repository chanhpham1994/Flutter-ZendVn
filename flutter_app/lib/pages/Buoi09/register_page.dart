import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Buoi09/widget/input_form_field.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _mail = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  bool obscured = true;

  void _toggleObscured() {
    setState(() {
      obscured = !obscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                InputFormField(
                  obscureText: false,
                  controller: _mail,
                  hintText: 'Email',
                  ErrMess: 'VUI LONG NHAP EMAILLL',
                ),
                const SizedBox(
                  height: 20,
                ),
                InputFormField(
                  obscureText: true,
                  controller: _pass,
                  hintText: 'Password',
                  ErrMess: 'VUI LONG NHAP PASSWORDDD',
                  iconContent: Container(
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        obscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InputFormField(
                  obscureText: obscured,
                  controller: _confirmPass,
                  hintText: 'Confirm Password',
                  ErrMess: 'VUI LONG NHAP PASSWORDDD',
                  iconContent: Container(
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        obscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
