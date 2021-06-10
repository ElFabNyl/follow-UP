import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  //at the initialisation, i build my animation controller.
  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(seconds: 6), vsync: this);
    super.initState();
    //to use the controller
    controller.forward();

    //je creais une Curved Animation
    animation =
        ColorTween(begin: Colors.white, end: Colors.grey).animate(controller);
    //to watch out what it's doing, and maybe manage if i want
    controller.addListener(() {
      setState(() {});
      // just to watch. hihihi!!!
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Hero(
                  tag: 'img',
                  child: Image.asset("images/metrics-min.png"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Keep a record of souls winning',
                        cursor: '..',
                        speed: Duration(milliseconds: 60),
                        textAlign: TextAlign.center,
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: animation.value),
                          onPressed: () {},
                          child: Text('Login'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "------- Or -------",
                          style: TextStyle(fontSize: 10.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: animation.value),
                          onPressed: () {},
                          child: Text('Register'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
