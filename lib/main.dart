import 'package:flutter/material.dart';
import 'package:tradenapp/modules/login_module/login_screen.dart';
import 'package:tradenapp/modules/sign_up_module/sign_up_1.dart';
import 'package:tradenapp/modules/sign_up_module/sign_up_2.dart';
import 'package:tradenapp/modules/welcome_module/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUp_Page1(),

      /*BlocProvider<PostsBloc>(
          create: (context) => PostsBloc()..add(LoadPostEvents()),
          child: const PostView()),*/
    );
  }
}
