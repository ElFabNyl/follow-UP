import 'package:flutter/material.dart';
import 'package:followup/brain/controller.dart';
import 'package:followup/models/Convert.dart';
import 'package:followup/widgets/Widgets.dart';
import 'package:followup/dataGrid/ConvertDataSource.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  List<Convert> convertis = <Convert>[];

  late ConvertDataSource convertDataSource;
  late AnimationController controller;
  //at the initialisation, i build my animation controller.
  @override
  void initState() {
    convertis = Brain.getConvert();
    convertDataSource = ConvertDataSource(convertis: convertis);
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
                            color: Colors.grey,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ],
              ),
              Widgets.contentGrid(convertDataSource),
            ],
          ),
        ),
      ),
    );
  }
}
