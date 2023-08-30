import 'package:flutter/material.dart';
import 'package:login/src/presentation/screens/login_screen.dart';
import 'package:login/src/presentation/screens/register_screen.dart';
import 'package:login/src/presentation/screens/welcom_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/welcome",
      routes: {
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
        "/welcome": (context) => const WelcomeScreen()
      },
    );
  }
}
