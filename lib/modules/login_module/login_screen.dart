import 'package:flutter/material.dart';
import 'package:tradenapp/common_widgets/button.dart';
import 'package:tradenapp/common_widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameEditingController = TextEditingController();
  final pswdEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          margin: const EdgeInsets.only(right: 40, left: 40),
          child: ListView(children: [
            const SizedBox(height: 60),
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
                      'LOGIN',
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
            const SizedBox(
              height: 200,
            ),
            Column(
              children: [
                TextField(
                  controller: nameEditingController,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(fontSize: 12),
                    labelText: "EMAIL ADDRESS / PHONE NUMBER",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: pswdEditingController,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(fontSize: 14),
                    labelText: "Password",
                  ),
                ),
                const SizedBox(height: 14),
                CommonButton(
                  onTap: () {},
                  text: 'LOGIN',
                ),
                const SizedBox(height: 14),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: _verifyPassword,
                      child: const Text(
                        'Forget Password ?',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Not a member yet? Sign up now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ]),
        ),
      )),
    );
  }

  void _forgetPassword() {
    final emailNumInputController = TextEditingController();

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              height: 250,
              child: Container(
                margin: const EdgeInsets.only(right: 40, left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Forget Password ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.close_sharp),
                                onPressed: () {},
                              )),
                        ),
                      ],
                    ),
                    TextField(
                      controller: emailNumInputController,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(fontSize: 12),
                        labelText: "EMAIL ADDRESS / PHONE NUMBER",
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CommonButton(onTap: () {}, text: 'Send OTP'),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _verifyPassword() {
    final emailNumInputController = TextEditingController();

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              height: 250,
              child: Container(
                margin: const EdgeInsets.only(right: 40, left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'VERIFY EMAIL/PHONE NUMBER',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.close_sharp),
                                onPressed: () {},
                              )),
                        ),
                      ],
                    ),
                    TextField(
                      controller: emailNumInputController,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(fontSize: 12),
                        labelText: "OTP",
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CommonButton(onTap: () {}, text: 'Verify'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Change Email/Phone',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Resend OTP',
                              style: TextStyle(color: Colors.grey),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _resetPassword() {
    final passInputController = TextEditingController();
    final confirmPassInputController = TextEditingController();

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              height: 320,
              child: Container(
                margin: const EdgeInsets.only(right: 40, left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Reset Password ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: const Icon(Icons.close_sharp),
                                onPressed: () {},
                              )),
                        ),
                      ],
                    ),
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
                      controller: passInputController,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(fontSize: 14),
                        labelText: 'Confirm Password',
                        suffixIcon: IconButton(
                          icon: ImageIcon(
                            AssetImage('assets/pswrd_hide.png'),
                          ),
                          onPressed: null,
                        ),
                      ),
                      controller: confirmPassInputController,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CommonButton(onTap: () {}, text: 'Reset Password'),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
