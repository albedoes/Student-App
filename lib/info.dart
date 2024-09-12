import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Data untuk ditampilkan di tabel
    final List<Map<String, String>> infoData = [
      {'Nama': 'Dika Hadi Permana', 'Pekerjaan': 'Developer'},
      {'Nama': 'Budi Santoso', 'Pekerjaan': 'Desainer'},
      {'Nama': 'Citra Ayu', 'Pekerjaan': 'Manajer Proyek'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Data'),
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue.shade100, Colors.lightBlue.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: DataTable(
                columnSpacing: 30,
                dataRowHeight: 60,
                headingRowHeight: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Nama',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Pekerjaan',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                ],
                rows: infoData
                    .map(
                      (info) => DataRow(
                        cells: <DataCell>[
                          DataCell(
                            Text(
                              info['Nama']!,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              info['Pekerjaan']!,
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
