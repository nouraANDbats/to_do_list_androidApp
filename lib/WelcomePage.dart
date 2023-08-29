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
                image: AssetImage('assets/backroundImage/mesh-gradient.png'),
                fit: BoxFit.fill),
          ),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.start,

            children: [


              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 80, 5, 5),
                  child: Container(
                      // decoration: BoxDecoration(
                      //   mainAxisAlignment:
                      // ),
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "To-dos",
                      style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
              ),

              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 0, 25),
                  child: Container(

                      child: Align(
                        alignment: Alignment.centerLeft,
                          child: Text(
                            'Help you '
                                'keep track of your goals',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.41,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
