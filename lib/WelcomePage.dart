import 'package:flutter/material.dart';

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

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image:
                AssetImage('assets/backroundImage/mesh-gradient.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Text("To-dos", style: TextStyle(color: Colors.white,fontSize: 25),),
          ),
        ),
      ),
    );
  }
}


