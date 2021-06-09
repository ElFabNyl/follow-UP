import 'package:flutter/material.dart';

void main()  {
  runApp(Index());
}

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  //at the initialisation, i build my animation controller.
  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
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
  Future<Image> im() async{
  var i = await Image.asset("images/metrics.png");
   return i;
  }
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child:  Image.asset("images/metrics.png"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Keep a record of ',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 40.0),
                  ),
                  Text(
                    'souls winning',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 40.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: animation.value),
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
                          style: ElevatedButton.styleFrom(
                              primary: animation.value),
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
