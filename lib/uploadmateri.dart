import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MateriPage(),
  ));
}

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
            // Tahapan
            _StepBar(activeStep: 1), // Menandai langkah pertama sebagai aktif
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScreenTwo()),
                      );
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

class _StepBar extends StatelessWidget {
  final int activeStep;

  const _StepBar({Key? key, required this.activeStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _StepCircle(
            number: 1,
            isActive: activeStep ==
                1), // Menandai nomor 1 sesuai dengan langkah yang aktif
        _StepLine(),
        _StepCircle(
            number: 2,
            isActive: activeStep ==
                2), // Menandai nomor 2 sesuai dengan langkah yang aktif
        _StepLine(),
        _StepCircle(
            number: 3,
            isActive: activeStep ==
                3), // Menandai nomor 3 sesuai dengan langkah yang aktif
      ],
    );
  }
}

class _StepCircle extends StatelessWidget {
  final int number;
  final bool isActive;

  const _StepCircle({Key? key, required this.number, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isActive ? Color(0xFF3158DA) : Colors.grey,
      child: Text(
        '$number',
        style: TextStyle(
          color: isActive ? Colors.white : Color.fromARGB(255, 6, 70, 123),
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _StepLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40, // Tentukan lebar garis penghubung
      height: 2, // Tentukan tinggi garis penghubung
      color: Colors.grey, // Atur warna garis penghubung
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // Letakkan tombol unggah di bagian bawah
          children: [
            // Tahapan
            _StepBar(activeStep: 2), // Menandai langkah kedua sebagai aktif
            Expanded(
                child:
                    SizedBox()), // Untuk memberikan ruang kosong agar tombol "Unggah" ditempatkan di bagian bawah
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi saat tombol unggah ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenThree()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color(0xFF3158DA), // Warna latar belakang tombol (3158DA)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Update',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Sora',
                    color: Colors.white, // Warna teks putih
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

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // Letakkan tombol update di bagian bawah
          children: [
            // Tahapan
            _StepBar(activeStep: 3), // Menandai langkah ketiga sebagai aktif
            SizedBox(
                height:
                    16.0), // Beri sedikit jarak dari tahapan ke tombol kotak "Sukses"
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi saat tombol update ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color(0xFFEFF0F6), // Warna latar belakang tombol (EFF0F6)
                padding: EdgeInsets.all(16.0), // Padding internal tombol
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Bentuk sudut tombol
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle, // Icon centang bulat
                    color: Color(0xFF3158DA), // Warna icon
                    size: 48.0, // Ukuran icon
                  ),
                  SizedBox(height: 8.0), // Jarak antara icon dan teks
                  Text(
                    'Sukses',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Sora',
                      color: Colors.black, // Warna teks
                    ),
                  ),
                  SizedBox(height: 8.0), // Jarak antara teks dan deskripsi
                  Text(
                    'Materi yang Anda tambahkan sukses untuk ditambahkan pada daftar kelas.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Sora',
                      color: Color(0xFF7C7C7C), // Warna teks (7C7C7C)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height:
                    16.0), // Beri sedikit jarak dari tombol "Sukses" ke tombol "Lihat Daftar Materi"
            Expanded(
                child:
                    SizedBox()), // Memberikan ruang kosong agar tombol "Lihat Daftar Materi" ditempatkan di bagian bawah
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi saat tombol "Lihat Daftar Materi" ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color(0xFF3158DA), // Warna latar belakang tombol (3158DA)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Lihat Daftar Materi',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Sora',
                    color: Colors.white, // Warna teks putih
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
