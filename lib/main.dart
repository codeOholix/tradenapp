import 'package:flutter/material.dart';
import 'package:tradenapp/modules/welcome_module/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),

      /*BlocProvider<PostsBloc>(
          create: (context) => PostsBloc()..add(LoadPostEvents()),
          child: const PostView()),*/
    );
  }
}
