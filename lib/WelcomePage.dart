import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';

RadialGradient r1 = RadialGradient(
  colors: [
    Colors.deepOrangeAccent,
    Color(0xFF6289FF),
  ],
  radius: 0.8,
  stops: [0.1, 0.9],
  focal: Alignment.centerLeft,
);

RadialGradient r2 = RadialGradient(
  colors: [
    Colors.deepOrangeAccent,
    Color(0xFF6289FF),
  ],
  radius: 0.8,
  stops: [0.1, 0.8],
  focal: Alignment.topRight,
);

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimateGradient(
          primaryBegin: Alignment.topLeft,
          primaryEnd: Alignment.bottomRight,
          secondaryBegin: Alignment.bottomRight,
          secondaryEnd: Alignment.topRight,
          primaryColors: const [
            Colors.deepOrangeAccent,
            Color(0xFF6289FF),
          ],
          secondaryColors: [
            Color(0xFF6289FF),
            Colors.deepOrangeAccent,
          ],
          child: Row(
            children: [
              Expanded(
                flex: 15,
                child: Text(
                  'To-Dos',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
