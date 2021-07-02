import 'package:flutter/material.dart';
import 'package:followup/brain/Datas.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart';

class Widgets {
  //buildind the appBarBottom section here

  static Container appBarBottomSection(
      context, AnimationController controller) {
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
              boxHeight: 70.0,
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Wrap(
              direction: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${controller.value.toInt()}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              height: 1),
                        ),
                        Text(
                          '/',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              height: 1),
                        ),
                        Text(
                          '1000000000',
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
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                              height: 1,
                              letterSpacing: 2.8),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  //creating the  appBar

  static AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.grey,
      title: Text(
        "Numbers",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0, top: 15.0),
          child: Badge(
            alignment: Alignment.topLeft,
            badgeColor: Colors.red,
            shape: BadgeShape.circle,
            badgeContent: Text(
              '7',
              style: TextStyle(color: Colors.white),
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

//building the drawer
  static Drawer drawer() {
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.convertisEnregistre.length.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                Text(
                  'Actual Disciples',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15.0,
                      letterSpacing: 1.5),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                onTap: () {},
                leading: Icon(Icons.person_add),
                title: Text("Add Convert"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.note_add),
                title: Text("Register myself"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.arrow_forward),
                title: Text("Register Someone"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.list),
                title: Text("Converts List"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.logout_rounded,
                  color: Colors.blueGrey,
                ),
                title: Text("Logout"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
