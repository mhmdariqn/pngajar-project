import 'package:pngajar/uploadmateri.dart';
import 'package:flutter/material.dart';

class KelolaMateri extends StatelessWidget {
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
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.2), // Warna bayangan
                      //     spreadRadius: 0, // Radius penyebaran
                      //     blurRadius: 10, // Radius blur
                      //     offset: Offset(3,
                      //         20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                      //   ),
                      // ],
                    ),
                    child: Stack(children: [
                      Positioned(
                        left: 93,
                        top: 55,
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
                        right: 105,
                        top: 50,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => KelompokBelajar()),
                            // );
                          },
                          child: Container(
                            // width:
                            //     100, // Sesuaikan dengan ukuran yang diinginkan
                            // height: 100,
                            child: Text(
                              'Materi',
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
                  height: 30,
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
                            left: 12,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/materiflow.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 78,
                            top: 25,
                            child: Text(
                              "User Flow & Wireframing.pdf",
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
                            left: 78,
                            top: 40,
                            child: Text(
                              '2 Hal.docx',
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
                            left: 12,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/materiuiux.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 78,
                            top: 25,
                            child: Text(
                              "UX Design, Research & Writing.pdf",
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
                            left: 78,
                            top: 40,
                            child: Text(
                              '10 Hal.docx',
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
                            left: 12,
                            top: 10,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                    width:
                                        58, // Sesuaikan dengan ukuran yang diinginkan
                                    height: 57,
                                    'images/materipro.png')
                              ],
                            ),
                          ),
                          Positioned(
                            left: 78,
                            top: 25,
                            child: Text(
                              "Protoyping.docx",
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
                            left: 78,
                            top: 40,
                            child: Text(
                              '6 Hal.docx',
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
                  left: 270, bottom: 10.0), // Padding untuk tombol
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MateriPage()),
                  );
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 50),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(
                      20), // Mengatur padding agar sesuai dengan ukuran teks
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF3158DA), // Warna background
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
