import 'package:flutter/material.dart';

class StudyGroupForm extends StatefulWidget {
  @override
  _StudyGroupFormState createState() => _StudyGroupFormState();
}

class _StudyGroupFormState extends State<StudyGroupForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: Text('Kelompok Belajar', style: TextStyle(fontFamily: 'Sora')),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            StudyGroupNameInput(),
            DescriptionInput(),
            ContinueButton(), // New button added here
          ],
        ),
      ),
    );
  }
}

class StudyGroupNameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 8.0),
          child: Text('Nama Kelompok Belajar',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Contoh: Flutter Group's",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
      ],
    );
  }
}

class DescriptionInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 12, bottom: 8.0),
          child: Text('Deskripsi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 8.0),
          child: Container(
            // width: 328,
            // height: 246,
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5, // Makes the input field expandable
              decoration: InputDecoration(
                hintText: "Masukkan deskripsi materi di sini",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ContinueButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0), // Padding untuk tombol
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Ajukan',
          style: TextStyle(fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            MediaQuery.of(context).size.width * 0.8, // Lebar minimum tombol
            MediaQuery.of(context).size.height * 0.05, // Tinggi minimum tombol
          ),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
          ),
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF3158DA), // Warna teks
        ),
      ),
    );
  }
}
