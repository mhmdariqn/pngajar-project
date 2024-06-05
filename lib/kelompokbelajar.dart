import 'package:pngajar/ajukankelompok.dart';
import 'package:pngajar/uiuxgrup.dart';
import 'package:flutter/material.dart';

class KelompokBelajar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kursusku'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    height: 75,
                    width: 900,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(children: [
                      Positioned(
                        left: 93,
                        top: 50,
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                // width: 58,
                                // height: 57,
                                child: Center(
                                  child: Text('Kelas'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 73,
                        top: 48,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KelompokBelajar()),
                            );
                          },
                          child: Container(
                            // width:
                            //     100, // Sesuaikan dengan ukuran yang diinginkan
                            // height: 100,
                            child: Text(
                              'Kelompok Belajar',
                              style: TextStyle(
                                fontFamily: "Sora",
                                height: 2.0,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF3158DA),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // Aksi yang akan dilakukan saat Container diklik
                  },
                  child: Center(
                    child: Container(
                      height: 75,
                      width: 328,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), // Warna bayangan
                            spreadRadius: 0, // Radius penyebaran
                            blurRadius: 10, // Radius blur
                            offset: Offset(3,
                                20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/image1.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 25,
                            child: Text(
                              "DATA ANALYSIS Group’s",
                              style: TextStyle(
                                fontFamily: "Sora",
                                height: 1.0,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 40,
                            child: Text(
                              '12 Peserta',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    // Aksi yang akan dilakukan saat Container diklik
                  },
                  child: Center(
                    child: Container(
                      height: 75,
                      width: 328,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), // Warna bayangan
                            spreadRadius: 0, // Radius penyebaran
                            blurRadius: 10, // Radius blur
                            offset: Offset(3,
                                20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/image2.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 25,
                            child: Text(
                              "PROYEK 1 Group’s",
                              style: TextStyle(
                                fontFamily: "Sora",
                                height: 1.0,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 40,
                            child: Text(
                              '12 Peserta',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    // Aksi yang akan dilakukan saat Container diklik
                  },
                  child: Center(
                    child: Container(
                      height: 75,
                      width: 328,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), // Warna bayangan
                            spreadRadius: 0, // Radius penyebaran
                            blurRadius: 10, // Radius blur
                            offset: Offset(3,
                                20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/image6.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 25,
                            child: Text(
                              "Java's Group’s",
                              style: TextStyle(
                                fontFamily: "Sora",
                                height: 1.0,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 40,
                            child: Text(
                              '12 Peserta',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    // Aksi yang akan dilakukan saat Container diklik
                  },
                  child: Center(
                    child: Container(
                      height: 75,
                      width: 328,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), // Warna bayangan
                            spreadRadius: 0, // Radius penyebaran
                            blurRadius: 10, // Radius blur
                            offset: Offset(3,
                                20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/image5.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 25,
                            child: Text(
                              "ALGORITHM Group’s",
                              style: TextStyle(
                                fontFamily: "Sora",
                                height: 1.0,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 40,
                            child: Text(
                              '12 Peserta',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GroupClicked5()),
                    );
                  },
                  child: Center(
                    child: Container(
                      height: 75,
                      width: 328,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), // Warna bayangan
                            spreadRadius: 0, // Radius penyebaran
                            blurRadius: 10, // Radius blur
                            offset: Offset(3,
                                20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/image4.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 25,
                            child: Text(
                              "UI/UX Group’s",
                              style: TextStyle(
                                fontFamily: "Sora",
                                height: 1.0,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 40,
                            child: Text(
                              '12 Peserta',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    // Aksi yang akan dilakukan saat Container diklik
                  },
                  child: Center(
                    child: Container(
                      height: 75,
                      width: 328,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.2), // Warna bayangan
                            spreadRadius: 0, // Radius penyebaran
                            blurRadius: 10, // Radius blur
                            offset: Offset(3,
                                20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 32,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/image3.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 25,
                            child: Text(
                              "FRONT END Group’s",
                              style: TextStyle(
                                fontFamily: "Sora",
                                height: 1.0,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 98,
                            top: 40,
                            child: Text(
                              '12 Peserta',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 5, right: 5, bottom: 10.0), // Padding untuk tombol
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudyGroupForm()),
                  );
                },
                child: Text(
                  'Ajukan Kelompok Belajar',
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
