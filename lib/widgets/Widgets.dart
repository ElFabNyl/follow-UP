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
              boxHeight: 75.0,
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
                              fontSize: 25.0,
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
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.3),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0, top: 15.0),
          child: Badge(
            showBadge: true,
            alignment: Alignment.center,
            badgeColor: Colors.red,
            shape: BadgeShape.circle,
            padding: EdgeInsets.all(8),
            badgeContent: Text(
              '20',
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

//building the drawer
  static Drawer drawer(context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Kamtou boris',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              "email@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
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
                leading: Icon(
                  Icons.edit,
                  color: Colors.blueGrey,
                ),
                title: Text("Edit profil"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'addConvertScreen');
                },
                leading: Icon(Icons.person_add),
                title: Text("Add Convert"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.list_alt),
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
                title: Text("My converts List"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'loginScreen');
                },
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

  //building the dialogue alert here

  static Future<void> showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Commitment',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0, letterSpacing: 1.6),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'I commit myself to follow this young convert',
                  style: TextStyle(
                      fontStyle: FontStyle.italic ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Approve',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () {
                //avant de pop on va d'abord stoker les donnnées
                Navigator.pushNamed(context, 'homeScreen');
              },
            ),
          ],
        );
      },
    );
  }
}
