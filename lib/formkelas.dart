import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'daftarkelasmentor.dart';

class FormKelas extends StatelessWidget {
  final TextEditingController namakelasController = TextEditingController();
  final TextEditingController matkulController = TextEditingController();
  final TextEditingController tglmulaiController = TextEditingController();
  final TextEditingController tglakhirController = TextEditingController();
  final TextEditingController jmlhpertemuanController = TextEditingController();
  final TextEditingController jmlhmhsController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();
  final TextEditingController hargaminController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();

  Future<void> _submitForm(BuildContext context) async {
    final response = await http.post(
      Uri.parse('http://172.20.10.3/pngajarphp/buatkelas/kelas_form.php'),
      body: {
        'namakelas': namakelasController.text,
        'matkul': matkulController.text,
        'tglmulai': tglmulaiController.text,
        'tglakhir': tglakhirController.text,
        'jmlhpertemuan': jmlhpertemuanController.text,
        'jmlhmhs': jmlhmhsController.text,
        'harga': hargaController.text,
        'hargamin': hargaminController.text,
        'deskripsi': deskripsiController.text,
      },
    );

    final responseData = json.decode(response.body);
    if (responseData['pesan'] == 'Sukses') {
      final newKelas = {
        'id': responseData['id'],
        'namakelas': namakelasController.text,
        'harga': hargaController.text,
      };

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DaftarKelas(
            newKelas: newKelas,
          ),
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
        title: Text('Form Kelas'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildTextField('Nama Kelas', namakelasController),
            buildTextField('Mata Kuliah', matkulController),
            Row(
              children: [
                Expanded(
                    child: buildTextField('Tanggal Mulai', tglmulaiController)),
                SizedBox(width: 10),
                Expanded(
                    child: buildTextField('Tanggal Akhir', tglakhirController)),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: buildTextField(
                        'Jumlah Pertemuan', jmlhpertemuanController)),
                SizedBox(width: 10),
                Expanded(
                    child:
                        buildTextField('Jumlah Mahasiswa', jmlhmhsController)),
              ],
            ),
            Row(
              children: [
                Expanded(child: buildTextField('Harga', hargaController)),
                SizedBox(width: 10),
                Expanded(
                    child: buildTextField('Harga minimum', hargaminController)),
              ],
            ),
            buildTextField('Deskripsi', deskripsiController, maxLines: 5),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () => _submitForm(context),
                child: Text('Lanjut'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF3158DA),
                  minimumSize: Size(double.infinity, 60),
                  textStyle: TextStyle(fontSize: 18),
                  elevation: 0, // Remove shadow
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, TextEditingController controller,
      {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText),
          TextFormField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Color(0xFFEAEEFB),
            ),
          ),
        ],
      ),
    );
  }
}
