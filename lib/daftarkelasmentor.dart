import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pngajar/materimentor.dart';
import 'dart:convert';

class DaftarKelas extends StatefulWidget {
  final Map<String, dynamic>? newKelas;

  DaftarKelas({this.newKelas});

  @override
  _DaftarKelasState createState() => _DaftarKelasState();
}

class _DaftarKelasState extends State<DaftarKelas> {
  List<Map<String, dynamic>> _kelasData = [];

  @override
  void initState() {
    super.initState();
    _fetchKelasData();
    if (widget.newKelas != null) {
      _addKelas(widget.newKelas!);
    }
  }

  Future<void> _fetchKelasData() async {
    final response = await http.get(
      Uri.parse('http://172.20.10.3/pngajarphp/buatkelas/kelas_read.php'),
    );

    final List<dynamic> data = json.decode(response.body);
    setState(() {
      _kelasData = data
          .map((item) => {
                'id': item['id'] as String? ?? '',
                'namakelas': item['namakelas'] as String? ?? '',
                'participants': item['jmlhmhs'] as String? ?? '',
              })
          .toList();
    });
  }

  void _addKelas(Map<String, dynamic> newKelas) {
    setState(() {
      _kelasData.add({
        'id': newKelas['id'] ?? '',
        'namakelas': newKelas['namakelas'] ?? '',
        'participants': newKelas['participants'] ?? '',
      });
    });
  }

  void _editKelas(int index, Map<String, dynamic> editedKelas) {
    setState(() {
      _kelasData[index] = {
        'id': editedKelas['id'] ?? '',
        'namakelas': editedKelas['namakelas'] ?? '',
        'participants': editedKelas['participants'] ?? '',
      };
    });
  }

  void _removeKelas(int index) {
    setState(() {
      _kelasData.removeAt(index);
    });
  }

  void _showEditOptions(
      BuildContext context, int index, Map<String, dynamic> kelas) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 310,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  Text(
                    kelas['namakelas'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.library_books_rounded),
                title: const Text('Materi'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MateriMentor()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text('Edit'),
                onTap: () {
                  Navigator.pop(context); // Menutup bottom sheet
                  _showEditDialog(context, index, kelas);
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Hapus'),
                onTap: () {
                  _removeKelas(index);
                  Navigator.pop(context); // Menutup bottom sheet
                },
              ),
              ListTile(
                leading: const Icon(Icons.cancel),
                title: const Text('Batal'),
                onTap: () {
                  Navigator.pop(context); // Menutup bottom sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showEditDialog(
      BuildContext context, int index, Map<String, dynamic> kelas) {
    final TextEditingController namakelasController =
        TextEditingController(text: kelas['namakelas']);
    final TextEditingController participantsController =
        TextEditingController(text: kelas['participants']);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Kelas'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: namakelasController,
                decoration: InputDecoration(labelText: 'Nama Kelas'),
              ),
              TextField(
                controller: participantsController,
                decoration: InputDecoration(labelText: 'Jumlah Mahasiswa'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                final editedKelas = {
                  'id': kelas['id'],
                  'namakelas': namakelasController.text,
                  'participants': participantsController.text,
                };
                _editKelas(index, editedKelas);
                Navigator.of(context).pop();
              },
              child: Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Kelas',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: buildKelasList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context); // Return to form
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: const Color(0xFF3158DA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget buildKelasList() {
    return ListView.builder(
      itemCount: _kelasData.length,
      itemBuilder: (context, index) {
        final kelas = _kelasData[index];
        return GroupItem(
          namakelas: kelas['namakelas'],
          participants: kelas['participants'],
          onTap: () {
            _showEditOptions(context, index, kelas);
          },
        );
      },
    );
  }
}

class GroupItem extends StatelessWidget {
  final String namakelas;
  final String participants;
  final VoidCallback onTap;

  const GroupItem({
    required this.namakelas,
    required this.participants,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(16),
        width: 328,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(3, 20),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.class_outlined,
                size: 40, color: Colors.blue), // Add icon
            SizedBox(width: 16), // Add some spacing between the icon and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        namakelas,
                        style: const TextStyle(
                          fontFamily: "Sora",
                          height: 1.0,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: onTap,
                      ),
                    ],
                  ),
                  // SizedBox(height: 1),
                  Text(
                    'Jumlah Mahasiswa: $participants',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
