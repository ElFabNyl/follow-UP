import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:followup/models/Convert.dart';

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
