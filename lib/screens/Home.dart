import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:followup/brain/controller.dart';
import 'package:followup/models/Convert.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

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
            _contentGrid(convertDataSource),
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
          title: Text("Converts Added"),
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

//more content

_contentGrid(convertDataSource) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: SfDataGrid(
      source: convertDataSource,
      columns: <GridColumn>[
        GridTextColumn(
          columnName: 'Name',
          label: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerRight,
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

class ConvertDataSource extends DataGridSource {
  ConvertDataSource({required List<Convert> convertis}) {
    _convertis = convertis
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(columnName: 'number', value: e.number),
              DataGridCell<String>(columnName: 'location', value: e.location),
              DataGridCell<String>(
                  columnName: 'follower Name', value: e.followerName),
              DataGridCell<String>(
                  columnName: 'follower Phone', value: e.followerphone),
            ]))
        .toList();
  }
  List<DataGridRow> _convertis = [];
  @override
  List<DataGridRow> get rows => _convertis;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((dataGridCell) {
        return Container(
          alignment: (dataGridCell.columnName == 'name' ||
                  dataGridCell.columnName == 'follower Phone')
              ? Alignment.centerRight
              : Alignment.centerLeft,
          padding: EdgeInsets.all(16.0),
          child: Text(dataGridCell.value.toString()),
        );
      }).toList(),
    );
  }
}
