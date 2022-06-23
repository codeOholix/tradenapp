import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradenapp/common_widgets/button.dart';
import 'package:tradenapp/models/sign_up_model.dart';
import 'package:tradenapp/services/sign_up_service.dart';

class SignUp_Page1 extends StatefulWidget {
  const SignUp_Page1({Key? key}) : super(key: key);

  @override
  State<SignUp_Page1> createState() => _SignUp_Page1State();
}

class _SignUp_Page1State extends State<SignUp_Page1> {
  final nameEditingController = TextEditingController();
  final emailNumEditingController = TextEditingController();
  final otpEditingController = TextEditingController();

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
                  const SizedBox(height: 10),
                  TextField(
                    controller: emailNumEditingController,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(fontSize: 12),
                      labelText: "EMAIL ADDRESS / PHONE NUMBER",
                    ),
                  ),
                  const SizedBox(height: 14),
                  CommonButton(
                    onTap: () => _sendOTP(),
                    text: 'GET OTP',
                  ),
                  const SizedBox(height: 40),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'VERIFY EMAIL/PHONE',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(fontSize: 14),
                      labelText: "OTP",
                    ),
                    controller: otpEditingController,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 14),
                  CommonButton(
                    text: 'VERIFY OTP',
                    onTap: () {},
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
            )
          ]),
        ),
      )),
    );
  }

  void _sendOTP() async {
    AuthOTP otpValues = AuthOTP();
    final SignUpService service = SignUpService();

    otpValues.name = nameEditingController.text;
    otpValues.email_phone = emailNumEditingController.text;

    await service.sendOTP(otpValues);
    print('Button Pressed in Func');
  }
}
