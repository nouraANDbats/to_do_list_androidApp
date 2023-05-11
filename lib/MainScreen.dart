import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xAbE4EAFF),
        body: SafeArea(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Good Morning, Nura",
                    style: TextStyle(
                      color: Color(0xAA6289FF),
                      fontWeight: FontWeight.w700,
                      fontSize: 20.53,
                      shadows: [
                        Shadow(
                            blurRadius: 15.0,
                            color: Colors.white.withOpacity(0.05),
                            offset: Offset(4.0, 4.0))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            TheTextOfBox(msg: "For Today"),
            Stack(
                alignment: Alignment.bottomRight,
                children: [
                  BigBox(),
                  Positioned(right: 5, bottom: -25, child: AddButton())
                ],
                overflow: Overflow.visible),
            SizedBox(
              height: 8,
            ),
            TheTextOfBox(msg: "For The Week"),
            Stack(
                alignment: Alignment.bottomRight,
                children: [
                  SmallBox(),
                  Positioned(right: 5, bottom: -25, child: AddButton()),
                ],
                overflow: Overflow.visible)
          ]),
        ),
      ),
    );
  }
}

class TheTextOfBox extends StatelessWidget {
  final String msg;
  const TheTextOfBox({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 30,
      width: 345,
      child: Text(
        msg,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.orangeAccent,
            shadows: [
              Shadow(
                  color: Colors.white.withOpacity(0.15),
                  blurRadius: 15.0,
                  offset: Offset(4.0, 4.0))
            ]),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "+",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 27, color: Colors.white70 , fontWeight: FontWeight.w400),
          )),
      height: 50,
      width: 70,
      decoration: ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.orangeAccent,
          shadows: <BoxShadow>[
            BoxShadow(
                color: Colors.black54.withOpacity(0.05),
                blurRadius: 15.0,
                offset: Offset(4.0, 4.0))
          ]),
    );
  }
}

class SmallBox extends StatelessWidget {
  const SmallBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

        children: [
          Container(
            height: 160,
            width: 348,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  height: 4,
                ),
                itemBuilder: (context, index) => Taskbars(),
                itemCount: 7,
              ),
            ),
          ),
        ],
      ),
      height: 170,
      width: 350,
      decoration: BoxDecoration(
          color: Color(0xAAE4EAFF),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            width: 3,
            color: Colors.orangeAccent,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54.withOpacity(0.05),
                blurRadius: 15.0,
                offset: Offset(4.0, 4.0)),
          ]),
    );
  }
}

class BigBox extends StatelessWidget {
  const BigBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
              height: 330,
              width: 348,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    height: 4,
                  ),
                  itemBuilder: (context, index) => Taskbars(),
                  itemCount: 7,
                ),
              ),
            ),
          ],
        ),
        height: 340,
        width: 350,
        decoration: BoxDecoration(
            color: Color(0xAAE4EAFF),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(
              width: 3,
              color: Colors.orangeAccent,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54.withOpacity(0.15),
                  blurRadius: 15.0,
                  offset: Offset(4.0, 4.0)),
            ]));
  }
}

class Taskbars extends StatelessWidget {
  const Taskbars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(25))),
    );
  }
}
