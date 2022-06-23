import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradenapp/common_widgets/button.dart';

class SignUp_Page2 extends StatefulWidget {
  const SignUp_Page2({Key? key}) : super(key: key);

  @override
  State<SignUp_Page2> createState() => _SignUp_Page2State();
}

class _SignUp_Page2State extends State<SignUp_Page2> {
  final nameEditingController = TextEditingController();
  final emailNumEditingController = TextEditingController();

  final passwordInputCtrl = TextEditingController();
  final confrmPasswordInputCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          margin: const EdgeInsets.only(right: 40, left: 40),
          child: ListView(children: [
            const SizedBox(height: 50),
            Row(
              children: [
                SizedBox(
                  height: 32,
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset('assets/back.png')),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'SIGN UP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 90),
              child: Column(
                children: [
                  TextField(
                    controller: nameEditingController,
                    decoration: const InputDecoration(
                        labelStyle: TextStyle(fontSize: 14),
                        labelText: "Name",
                        alignLabelWithHint: true),
                  ),
                  const SizedBox(height: 14),
                  TextField(
                    controller: emailNumEditingController,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(fontSize: 12),
                      labelText: "EMAIL ADDRESS / PHONE NUMBER",
                    ),
                  ),
                  const SizedBox(height: 14),
                  TextField(
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(fontSize: 14),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: ImageIcon(
                          AssetImage('assets/pswrd_hide.png'),
                        ),
                        onPressed: null,
                      ),
                    ),
                    controller: passwordInputCtrl,
                  ),
                  const SizedBox(height: 14),
                  TextField(
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(fontSize: 14),
                      labelText: "Confirm Password",
                      suffixIcon: IconButton(
                        icon: ImageIcon(
                          AssetImage('assets/pswrd_hide.png'),
                        ),
                        onPressed: null,
                      ),
                    ),
                    controller: confrmPasswordInputCtrl,
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      IconButton(
                        onPressed: (() => {}),
                        icon: ImageIcon(
                          AssetImage('assets/preferences.png'),
                        ),
                      ),
                      Text('I aggree with all Terms & Conditions'),
                    ],
                  ),
                  const SizedBox(height: 14),
                  SwitchListTile(
                      title: const Text(
                        'Register me as Service Provider',
                        style: TextStyle(fontSize: 12),
                      ),
                      value: true,
                      onChanged: (onChanged) {
                        setState(() {
                          //_isAppointed = onChanged;
                        });
                      }),
                  CommonButton(text: 'SIGN UP', onTap: () {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Already have an account? Login',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )),
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }

  void showPassword() {}
}
