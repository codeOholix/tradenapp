import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          margin: const EdgeInsets.only(right: 30, left: 30),
          child: Column(children: [
            const SizedBox(height: 60),
            Row(
              children: [
                Align(
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset('assets/back.png')),
                  alignment: Alignment.centerLeft,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )
              ],
            ),
          ]),
        ),
      )),
    );
  }
}
