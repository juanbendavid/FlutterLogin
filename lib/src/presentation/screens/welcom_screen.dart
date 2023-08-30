import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size * 0.6,
            width: double.infinity,
            color: Colors.amber,
            child: Text("data"),
          )
        ],
      ),
    );
  }
}
