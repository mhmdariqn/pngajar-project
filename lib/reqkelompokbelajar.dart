import 'package:flutter/material.dart';

class ReqGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top +
                    60), // Menambahkan margin untuk posisi ikon di atas
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200], // Warna latar belakang
                        filled: true, // Aktifkan latar belakang yang diisi
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              14), // Menambahkan border radius
                          borderSide: BorderSide.none, //Menghilangkan outline
                        ),
                        hintText: 'Nama Kelompok Belajar',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 21),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 30, top: 5),
                    child: const Text(
                      'Alasan',
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
                      width: 350, // Sesuaikan lebar sesuai kebutuhan
                      height: 246, // Tinggi TextField sesuai kebutuhan
                      child: TextField(
                        maxLines:
                            null, // Membuat TextField bisa memiliki banyak baris
                        expands:
                            true, // Memastikan TextField mengisi seluruh tinggi Container
                        textAlignVertical: TextAlignVertical
                            .top, // Memastikan teks dimulai dari atas
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200], // Warna latar belakang
                          filled: true, // Aktifkan latar belakang yang diisi
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                14), // Menambahkan border radius
                            borderSide:
                                BorderSide.none, // Menghilangkan outline
                          ),
                          hintText: 'Alasan Anda',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 100), // Spacer to allow scrolling
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 5, // Posisi ikon di atas
            left: 10, // Sesuaikan posisi sesuai kebutuhan
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: const Color.fromARGB(
                        255, 0, 0, 0), // Sesuaikan warna sesuai kebutuhan
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigasi kembali ke halaman sebelumnya
                  },
                ),
                SizedBox(
                    width:
                        8), // Jarak antara ikon dan teks, sesuaikan sesuai kebutuhan
                const Text(
                  'Permintaan Kelompok Belajar', // Teks yang ingin ditampilkan di samping ikon
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight
                        .bold, // Sesuaikan warna teks sesuai kebutuhan
                    fontSize: 18, // Sesuaikan ukuran font sesuai kebutuhan
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 10.0), // Padding untuk tombol
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Ajukan',
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.of(context).size.width *
                        0.8, // Lebar minimum tombol
                    MediaQuery.of(context).size.height *
                        0.05, // Tinggi minimum tombol
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02,
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF3158DA), // Warna teks
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
