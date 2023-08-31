import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _CustomBody(),
    );
  }
}

class _CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Column(
      children: [
        _AnimationWidget(size: size),
        _WelcomeWidget(size: size),
      ],
    );
  }
}

class _WelcomeWidget extends StatelessWidget {
  const _WelcomeWidget({
    required this.size,
  });

  tmp() {}

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      height: size * 0.4,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(38), topRight: Radius.circular(38))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),
          ),
          const Text(
            "Voluptate dolore irure est eiusmod quis qui proident tempor.",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              CustomButtom(
                text: "Sign In",
                color: Colors.black,
                textColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, "/login");
                },
              ),
              const SizedBox(
                width: 30,
              ),
              CustomButtom(
                text: "Register",
                color: Colors.white,
                textColor: Colors.black,
                onTap: () {
                  Navigator.pushNamed(context, "/register");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function()? onTap; // ? opcional
  const CustomButtom({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 150,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)))),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 19, color: textColor),
        ),
      ),
    );
  }
}

class _AnimationWidget extends StatelessWidget {
  const _AnimationWidget({
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size * 0.6,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Lottie.asset('assets/animations/beer.json'),
          ),
          const Text(
            "Deeps",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          const Text(
            "B E E R C A F E",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
