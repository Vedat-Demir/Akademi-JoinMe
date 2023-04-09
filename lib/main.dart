import 'package:beautifull_login/login/background/background.dart';
import 'package:beautifull_login/login/forms/login_form.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Material App',
      theme: ThemeData(
        fontFamily: 'Oswald',
      ),
      home: Scaffold(

        body: Stack(
          children: [
            Background(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
