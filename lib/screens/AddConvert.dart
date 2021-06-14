import 'package:flutter/material.dart';
// import 'package:followup/screens/Constants.dart';

class AddConvert extends StatefulWidget {
  @override
  _AddConvertState createState() => _AddConvertState();
}

class _AddConvertState extends State<AddConvert>
    with SingleTickerProviderStateMixin {
  late String email;
  late String name;
  late String password;
  late AnimationController controller;
  late Animation animation;
  DateTime _datetime = DateTime.now();
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
                        height: 85.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: TextField(
                        onChanged: (nameValue) {
                          //Do something with the user input.
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter the young convert name',
                          labelStyle: TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
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
                        hintText: 'Young convert phone',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
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
                        hintText: 'Young convert location',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
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
                        hintText: 'Follower name',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
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
                        hintText: 'Follower phone',
                        labelStyle: TextStyle(color: Colors.black),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(_datetime.toString()),
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
