import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pngajar/materimentor.dart';

class FormMateri extends StatelessWidget {
  final TextEditingController judulMateriController = TextEditingController();
  final TextEditingController matkulController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();

  Future<void> _submitForm(BuildContext context) async {
    final response = await http.post(
      Uri.parse('http://172.20.10.3/pngajarphp/upmateri/materi_form.php'),
      body: {
        'judulmateri': judulMateriController.text,
        'matkul': matkulController.text,
        'deskripsimtr': deskripsiController.text,
      },
    );

    final responseData = json.decode(response.body);
    if (responseData['pesan'] == 'Sukses') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MateriMentor(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal menyimpan data')),
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
              'Materi',
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
            SizedBox(height: 16.0),
            Text(
              'Judul Materi',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sora',
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: judulMateriController,
              decoration: InputDecoration(
                hintText: 'Contoh: Dasar Manajemen proyek',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Sora',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Mata Kuliah',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sora',
              ),
            ),
            SizedBox(height: 4.0),
            TextFormField(
              controller: matkulController,
              decoration: InputDecoration(
                hintText: 'Contoh: Proyek 1',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Sora',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sora',
              ),
            ),
            SizedBox(height: 4.0),
            TextFormField(
              controller: deskripsiController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Masukkan deskripsi materi di sini',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Sora',
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _submitForm(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3158DA),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Lanjut',
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
