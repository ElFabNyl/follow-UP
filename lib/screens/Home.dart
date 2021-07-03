import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:followup/widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:followup/brain/Datas.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  final  String nom = 'Convert Name:     ';
  final String number = 'Number:      ';
  final String country = 'Country:      ';
  final String location = 'Location:      ';
  final String followerName = 'Followed by:     ';
  final String followerNumber = 'Number:      ';

  // a rendre dynamique
  int upperBound = 3000000;
  int lowerBound = 1000000;


  //at the initialisation, i build my animation controller.
  @override
  void initState() {
    controller = AnimationController(
        duration: Duration(seconds: 15),
        vsync: this,
        upperBound: upperBound.toDouble(),
        lowerBound: lowerBound.toDouble());
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
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          print('you pressed !');
        },
        child: IconButton(
          icon: Icon(Icons.person_add),
          onPressed: () {},
        ),
      ),
      drawer: Container(
        child: Widgets.drawer(),
        width: 200.0,
        padding: EdgeInsets.zero,
      ),
      backgroundColor: Colors.white,
      appBar: Widgets.buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Widgets.appBarBottomSection(context, controller),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Recent Added',
                      style: GoogleFonts.inconsolata(
                        textStyle: TextStyle(
                            color: Colors.black87,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold, letterSpacing: 2.1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: user.convertisEnregistre.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 30,
                    shadowColor: Colors.grey,
                    margin: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nom +
                                user.convertisEnregistre[index].name.toString(),
                            textScaleFactor: 1.2,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            number +
                                user.convertisEnregistre[index].number
                                    .toString(),
                            textScaleFactor: 1.2,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            country +
                                user.convertisEnregistre[index].country
                                    .toString(),
                            textScaleFactor: 1.2,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            location +
                                user.convertisEnregistre[index].location
                                    .toString(),
                            textScaleFactor: 1.2,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            followerName +
                                user.convertisEnregistre[index].followerName
                                    .toString(),
                            textScaleFactor: 1.2,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            followerNumber +
                                user.convertisEnregistre[index].followerphone
                                    .toString(),
                            textScaleFactor: 1.2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Badge(
                                borderRadius: BorderRadius.circular(15.0),
                                elevation: 10,
                                shape: BadgeShape.square,
                                badgeColor: Colors.grey,
                                badgeContent: Text(
                                  '21/06/2021',
                                  style: TextStyle(color: Colors.white),
                                  textScaleFactor: 1.5,
                                ),
                                child: Text(
                                  '',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
