import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'daftarkelompokbelajar.dart';

class FormGroups extends StatelessWidget {
  final Function(String, String) onAddGroup;

  FormGroups({required this.onAddGroup});

  final TextEditingController groupNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  Future<void> _submitGroup(BuildContext context) async {
    final String groupName = groupNameController.text;
    final String description = descriptionController.text;

    if (groupName.isEmpty || description.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    final response = await http.post(
      Uri.parse('http://172.20.10.3/pngajarphp/buatkb/kb_form.php'),
      body: {
        'nama_kelompok': groupName,
        'deskripsi': description,
      },
    );

    final responseData = json.decode(response.body);
    if (responseData['pesan'] == 'Sukses') {
      onAddGroup(groupName, description);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DaftarKelompokBelajar()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to add group')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 8.0),
            Text(
              'Kelompok Belajar',
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 30, top: 5),
              child: const Text(
                'Nama Kelompok',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                width: 350,
                height: 70,
                child: TextField(
                  controller: groupNameController,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Nama Kelompok Belajar',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 30, top: 5),
              child: const Text(
                'Deskripsi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                width: 350,
                height: 246,
                child: TextField(
                  controller: descriptionController,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Deskripsi Kelompok',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _submitGroup(context),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.8,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                      backgroundColor: Color(0xFF3158DA),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Buat',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Sora',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
