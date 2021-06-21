import 'package:flutter/material.dart';
// import 'package:followup/screens/Constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>
    with SingleTickerProviderStateMixin {
      
  late final String email;
  late final String name;
  late final String password;
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
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Hero(
                      tag: 'img',
                      child: Container(
                        child: Image.asset('images/metrics-min.png'),
                        height: 120.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: TextField(
                      onChanged: (nameValue) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                      ),
                    ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      onChanged: (nameValue) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                        password = value;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(32.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: animation.value),
                      onPressed: () {},
                      child: Text('Register'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

