import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'formkelompokbelajar.dart';

class DaftarKelompokBelajar extends StatefulWidget {
  @override
  _DaftarKelompokBelajarState createState() => _DaftarKelompokBelajarState();
}

class _DaftarKelompokBelajarState extends State<DaftarKelompokBelajar> {
  List<Map<String, String>> _groupData = [];

  @override
  void initState() {
    super.initState();
    _fetchGroupData();
  }

  Future<void> _fetchGroupData() async {
    final response = await http.get(
      Uri.parse('http://172.20.10.3/pngajarphp/buatkb/kb_read.php'),
    );

    final List<dynamic> data = json.decode(response.body);
    setState(() {
      _groupData = data
          .map((item) => {
                'nama_kelompok': item['nama_kelompok'] as String,
                'deskripsi': item['deskripsi'] as String,
              })
          .toList();
    });
  }

  void _editGroup(int index) {
    final group = _groupData[index];
    TextEditingController groupNameController =
        TextEditingController(text: group['nama_kelompok']);
    TextEditingController descriptionController =
        TextEditingController(text: group['deskripsi']);

    _showEditForm(index, groupNameController, descriptionController);
  }

  void _showEditForm(int index, TextEditingController groupNameController,
      TextEditingController descriptionController) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16.0,
              right: 16.0,
              top: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: groupNameController,
                decoration: InputDecoration(labelText: 'Nama Kelompok'),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: 'Deskripsi'),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Batal'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _groupData[index] = {
                          'nama_kelompok': groupNameController.text,
                          'deskripsi': descriptionController.text,
                        };
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text('Simpan'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showOptionsBottomSheet(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.edit, color: Colors.blue),
                title: Text('Ubah'),
                onTap: () {
                  Navigator.of(context).pop();
                  _editGroup(index);
                },
              ),
              ListTile(
                leading: Icon(Icons.delete, color: Colors.red),
                title: Text('Hapus'),
                onTap: () {
                  setState(() {
                    _groupData.removeAt(index);
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Center(
                  child: Text(
                    'Batal',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _addGroup(String groupName, String description) {
    setState(() {
      _groupData.add({
        'nama_kelompok': groupName,
        'deskripsi': description,
      });
    });
    _fetchGroupData(); // Fetch updated data after adding a group
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kelompok Belajar',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: buildKelompokBelajarList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormGroups(
                onAddGroup: _addGroup,
              ),
            ),
          );
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

  Widget buildKelompokBelajarList() {
    return ListView.builder(
      itemCount: _groupData.length,
      itemBuilder: (context, index) {
        final group = _groupData[index];
        return GroupItem(
          groupName: group['nama_kelompok']!,
          description: group['deskripsi']!,
          onTap: () {
            // Aksi saat container diklik
          },
          onOptions: () {
            _showOptionsBottomSheet(context, index);
          },
        );
      },
    );
  }
}

class GroupItem extends StatelessWidget {
  final String groupName;
  final String description;
  final VoidCallback onTap;
  final VoidCallback onOptions;

  const GroupItem({
    required this.groupName,
    required this.description,
    required this.onTap,
    required this.onOptions,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
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
              Icon(Icons.group_outlined, size: 40, color: Colors.blue),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      groupName,
                      style: const TextStyle(
                        fontFamily: "Sora",
                        height: 1.0,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.grey),
                onPressed: onOptions,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
