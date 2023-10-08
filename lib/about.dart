import 'package:flutter/material.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 50, right: 50),
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    "images/dp.png",
                    height: 400,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.5,
              ),
              child: Column(
                children: [
                  Text(
                    "Hello I am",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Pushpraj Kushwaha",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Software Developer",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Hire Me",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
