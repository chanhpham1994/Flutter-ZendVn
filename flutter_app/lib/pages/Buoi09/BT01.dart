import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Buoi09/provider/login_provider.dart';
import 'package:flutter_app/pages/Buoi09/register_page.dart';
import 'package:flutter_app/pages/Buoi09/widget/input_form_field.dart';
import 'package:provider/provider.dart';

class B09BT01 extends StatefulWidget {
  const B09BT01({super.key});

  @override
  State<B09BT01> createState() => _B09BT01State();
}

class _B09BT01State extends State<B09BT01> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _mail = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  bool obscured = true;

  void _toggleObscured() {
    setState(() {
      obscured = !obscured;
    });
  }

  void login() async {
    // Provider.of<LoginProvider>(context, listen: false)
    //     .login(_mail.text, _pass.text);

    // bool isUser = Provider.of<LoginProvider>(context, listen: false).isUser;
    // print(isUser);

    await context.read<LoginProvider>().login(_mail.text, _pass.text).then(
      (value) {
        // print(value);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Provider.of<LoginProvider>(context, listen: false).isUser
                  ? const Text('Success')
                  : const Text('Fail')),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // print('test');
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    height: 300,
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.network(
                      'https://placeimg.com/640/480/any',
                      fit: BoxFit.cover,
                    ),
                  ),
                  InputFormField(
                      obscureText: false,
                      controller: _mail,
                      hintText: 'Email',
                      ErrMess: 'VUI LONG NHAP EMAILL'),
                  const SizedBox(
                    height: 20,
                  ),
                  InputFormField(
                    obscureText: obscured,
                    controller: _pass,
                    hintText: 'Password',
                    ErrMess: 'VUI LONG NHAP PASSWORDD',
                    iconContent: StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return Container(
                          child: GestureDetector(
                            onTap: _toggleObscured,
                            child: Icon(
                              obscured
                                  ? Icons.visibility_rounded
                                  : Icons.visibility_off_rounded,
                              size: 24,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: login,
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          textStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                      child: Provider.of<LoginProvider>(context, listen: true)
                              .isLoading
                          ? Container(
                              width: 24,
                              height: 25,
                              padding: const EdgeInsets.all(2.0),
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 3,
                              ),
                            )
                          : const Text(
                              'Login',
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'No registered yet !',
                          style: TextStyle(fontSize: 17),
                        ),
                        InkWell(
                            child: const Text(
                              'Create an account',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SecondRoute()),
                              );
                            }),
                      ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
