import 'package:flutter/material.dart';

class MyDataTable extends StatefulWidget {
  const MyDataTable({super.key});

  @override
  State<MyDataTable> createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Data Table"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.grey.shade100,
          child: Column(
            children: [
              DataTable(
                columns: [
                  DataColumn(
                    label: Text("Roll No"),
                  ),
                  DataColumn(
                    label: Text("Name"),
                  ),
                  DataColumn(
                    label: Text("Age"),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Text('12'),
                      ),
                      DataCell(
                        Text('ratheesh'),
                      ),
                      DataCell(
                        Text('26'),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text('121'),
                      ),
                      DataCell(
                        Text('Mark'),
                      ),
                      DataCell(
                        Text('34'),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
