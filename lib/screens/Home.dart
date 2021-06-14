import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //////////////////////////////////////////////////////////////////////
  //                        here we go
  //////////////////////////////////////////////////////////////////////
  ///
  late AnimationController controller;
  //at the initialisation, i build my animation controller.
  @override
  void initState() {
    controller = AnimationController(
        duration: Duration(seconds: 15),
        vsync: this,
        upperBound: 1000000000,
        lowerBound: 900000000);
    super.initState();
    //to use the controller
    controller.forward();

    controller.addListener(() {
      setState(() {});
      // just to watch. hihihi!!!
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('you pressed !');
        },
        child: Icon(Icons.person_add),
      ),
      drawer: Container(
        child: _drawer(),
        width: 200.0,
        padding: EdgeInsets.zero,
      ),
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            _appBarBottomSection(context, controller),
            _content(),
          ],
        ),
      ),
    );
  }
}

//creating the  appBar

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.grey,
    title: Text("Young Converts"),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      )
    ],
  );
}

//building the drawer
Drawer _drawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('Kamtou boris'),
          accountEmail: Text("email@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
        ListTile(
          leading: Icon(Icons.person_add),
          title: Text("Add Convert"),
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text("my converts list"),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListTile(
              leading: Icon(Icons.logout_rounded),
              title: Text("Logout"),
            ),
          ],
        ),
      ],
    ),
  );
}

//buildind the appBarBottom section

Container _appBarBottomSection(context, AnimationController controller) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: TextLiquidFill(
            boxHeight: 50.0,
            boxBackgroundColor: Colors.white,
            waveColor: Colors.black,
            text: 'Our Goal',
            textStyle: GoogleFonts.pacifico(
              textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${controller.value.toInt()}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                  height: 1),
            ),
            Text(
              'disciples',
              style: TextStyle(
                  textBaseline: TextBaseline.alphabetic,
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                  height: 1),
            ),
          ],
        )
      ],
    ),
  );
}

//more content

_content() {
  return Expanded(
    child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Container(
        height: 120.0,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 8.0),
          ],
          color: Colors.teal[200],
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.teal,
          ),
        ),
        child: Row(
          children: [
            Column(
              children: [],
            )
          ],
        ),
      ),
    ),
  );
}
