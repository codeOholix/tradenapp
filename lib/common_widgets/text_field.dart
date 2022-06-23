import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String title;
  TextEditingController textController;

  CustomTextField({Key? key, required this.title, required this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
        TextField(
          controller: textController,
        )
      ]),
    );
  }
}
