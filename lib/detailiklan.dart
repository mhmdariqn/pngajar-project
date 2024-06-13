import 'package:flutter/material.dart';
import 'uploadiklan.dart'; // Ensure this import is correct

class DetailIklan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Detail iklan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Kelas:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'UI-UX RESEARCH AND DESIGN',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(Icons.person, color: Color(0xFFFAC840)),
                        SizedBox(width: 8),
                        Text('Jonas Wolfhard'),
                        SizedBox(width: 16),
                        Icon(Icons.people, color: Color(0xFFFAC840)),
                        SizedBox(width: 8),
                        Text('40 Peserta'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.event, color: Color(0xFFFAC840)),
                        SizedBox(width: 8),
                        Text('4x Pertemuan'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Color(0xFFFAC840)),
                        SizedBox(width: 8),
                        Text('24 Juni 2024 - 30 Juli 2024'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Peningkatan yang signifikan dalam pengembangan produk digital seperti aplikasi dan situs web telah membuka peluang yang luas bagi profesi UI-UX Researcher and Designer. Permintaan akan keterampilan ini semakin meningkat.',
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Materi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('* Fundamental UI-UX Design\n'
                        '* UX Design, Research & Writing\n'
                        '* User Flow & Wireframing\n'
                        '* Complete Figma\n'
                        '* UI Design & Components\n'
                        '* Prototyping & Many More!'),
                    SizedBox(height: 16),
                    Text(
                      'Manfaat',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('✅ Live class 4x dengan mentor\n'
                        '✅ Latihan langsung di setiap sesi\n'
                        '✅ Sharing pengalaman\n'
                        '✅ Materi lengkap'),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UploadIklan()),
                      );
                    },
                    child: Text(
                      'Buat Iklan',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3158DA),
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
