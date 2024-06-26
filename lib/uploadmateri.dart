import 'package:flutter/material.dart';

class MateriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
                width:
                    8.0), // Beri sedikit jarak dari tombol back ke heading "Materi"
            Text(
              'Materi',
              textAlign: TextAlign.start, // Menjadikan teks "Materi" ke kiri
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tahapan // Menandai langkah pertama sebagai aktif
            SizedBox(
                height:
                    16.0), // Beri sedikit jarak dari tahapan ke judul materi
            // Judul Materi
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
            // Mata Kuliah
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
            // Deskripsi
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
            // Expanded untuk tombol Lanjut
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol "Lanjut" ditekan
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ScreenTwo()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(
                          0xFF3158DA), // Warna latar belakang tombol (3158DA)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Lanjut',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Sora',
                          color: Colors.white, // Warna teks putih
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

