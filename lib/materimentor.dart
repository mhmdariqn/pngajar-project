import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pngajar/formmateri.dart';

class MateriMentor extends StatefulWidget {
  @override
  _MateriMentorState createState() => _MateriMentorState();
}

class _MateriMentorState extends State<MateriMentor> {
  List<Map<String, dynamic>> _materiData = [];

  @override
  void initState() {
    super.initState();
    _fetchMateriData();
  }

  Future<void> _fetchMateriData() async {
    final response = await http.get(
        Uri.parse('http://172.20.10.3/pngajarphp/upmateri/materi_read.php'));

    final List<dynamic> data = json.decode(response.body);
    setState(() {
      _materiData = data
          .map((item) => {
                'judulmateri': item['judulmateri'] as String? ?? '',
                'matkul': item['matkul'] as String? ?? '',
              })
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Materi',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: 'Materi'),
              Tab(text: 'Draft'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: _materiData.length,
              itemBuilder: (context, index) {
                final materi = _materiData[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Icon(Icons.book, size: 40, color: Colors.blue),
                    title: Text(materi['judulmateri']),
                    subtitle: Text(materi['matkul']),
                    trailing: IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => DropDownMateriMentor(
                            imagePath: '',
                            title: materi['judulmateri'],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            Center(
              child: Text('Draft'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormMateri()),
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF3158DA),
        ),
      ),
    );
  }
}

class DropDownMateriMentor extends StatelessWidget {
  final String imagePath;
  final String title;

  const DropDownMateriMentor({
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.book, size: 50, color: Colors.blue),
            title: Text(title),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.delete, color: Color(0xFF3158DA)),
            title: Text('Hapus'),
            onTap: () {
              // Add delete logic here
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit, color: Color(0xFF3158DA)),
            title: Text('Ubah'),
            onTap: () {
              // Add edit logic here
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.visibility_off, color: Color(0xFF3158DA)),
            title: Text('Disembunyikan'),
            onTap: () {
              // Add hide logic here
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Center(
              child: Text(
                'Batal',
                style: TextStyle(color: Colors.orange, fontSize: 16),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
