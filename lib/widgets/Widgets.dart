import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Widgets {
  //more content

  static contentGrid(convertDataSource) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SfDataGrid(
        allowSorting: true,
        swipeMaxOffset: 50000,
        sortingGestureType: SortingGestureType.tap,
        source: convertDataSource,
        columns: <GridColumn>[
          GridTextColumn(
            // columnWidthMode: ColumnWidthMode.fill,
            columnName: 'Name',
            label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Name',
                
              ),
              
            ),
          ),
          GridTextColumn(
            columnName: 'Phone',
            label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text('Phone'),
            ),
          ),
          GridTextColumn(
            columnName: 'Location',
            width: 120,
            label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text('Location'),
            ),
          ),
          GridTextColumn(
            columnName: 'F.Name',
            label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              child: Text('F.Name'),
            ),
          ),
          GridTextColumn(
            columnName: 'F.phone',
            label: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              child: Text('F.phone'),
            ),
          ),
        ],
      ),
    );
  }

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

  //creating the  appBar

  static AppBar buildAppBar() {
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
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person_add),
            title: Text("Add Convert"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.list),
            title: Text("Converts Added"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                onTap: () {},
                leading: Icon(Icons.logout_rounded),
                title: Text("Logout"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
