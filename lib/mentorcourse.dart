import 'package:pngajar/materi.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;

  const CategoryButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Tambahkan logika ketika button diklik
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF3158DA), // Text color
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 16,
        ),
      ),
    );
  }
}

class KursusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kursusku'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      height: 75,
                      width: 328,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            height: 75,
                            width: 900,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 93,
                                  top: 50,
                                  child: Text(
                                    'Kelas',
                                    style: TextStyle(
                                      fontFamily: "Sora",
                                      height: 2.0,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF3158DA),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 40,
                            top: 55,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KelolaMateri()),
                                );
                              },
                              child: Container(
                                // width:
                                //     100, // Sesuaikan dengan ukuran yang diinginkan
                                // height: 100,
                                child: Text('Materi'),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                              color: Colors.grey
                                  .withOpacity(0.2), // Warna bayangan
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
                                      'images/kelasuiux.png')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 78, top: 5),
                              child: const Text(
                                'Graphic Design',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 249, 213, 37),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 78,
                              top: 23,
                              child: Text(
                                "UI-UX RESEARCH AND DESIGN",
                                style: TextStyle(
                                  fontFamily: "Sora",
                                  height: 1.0,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 78,
                                  top: 40), // Padding untuk jarak dari atas
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.people_alt_outlined,
                                    color: Color.fromARGB(255, 249, 213, 37),
                                    size: 10.0,
                                  ), // Icon person
                                  SizedBox(
                                      width: 8), // Spacer antara ikon dan teks
                                  Text(
                                    '40 Peserta',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ), // Teks "Orang"
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 78,
                                  top: 55), // Padding untuk jarak dari atas
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color.fromARGB(255, 249, 213, 37),
                                    size: 10.0,
                                  ), // Icon person
                                  SizedBox(
                                      width: 8), // Spacer antara ikon dan teks
                                  Text(
                                    '24 Juni 2024 - 30 Juli 2024',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ), // Teks "Orang"
                                ],
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
                              color: Colors.grey
                                  .withOpacity(0.2), // Warna bayangan
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
                                      'images/kelasreduksi.png')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 78, top: 5),
                              child: const Text(
                                'Ilmu Data',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 249, 213, 37),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 78,
                              top: 23,
                              child: Text(
                                "REDUKSI DIMENSI DATA",
                                style: TextStyle(
                                  fontFamily: "Sora",
                                  height: 1.0,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 78,
                                  top: 40), // Padding untuk jarak dari atas
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.people_alt_outlined,
                                    color: Color.fromARGB(255, 249, 213, 37),
                                    size: 10.0,
                                  ), // Icon person
                                  SizedBox(
                                      width: 8), // Spacer antara ikon dan teks
                                  Text(
                                    '23 Peserta',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ), // Teks "Orang"
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 78,
                                  top: 55), // Padding untuk jarak dari atas
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color.fromARGB(255, 249, 213, 37),
                                    size: 10.0,
                                  ), // Icon person
                                  SizedBox(
                                      width: 8), // Spacer antara ikon dan teks
                                  Text(
                                    '24 Januari - 25 Februari 2024',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ), // Teks "Orang"
                                ],
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
                              color: Colors.grey
                                  .withOpacity(0.2), // Warna bayangan
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
                                      'images/kelashpo.png')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 78, top: 5),
                              child: const Text(
                                'Ilmu Data',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 249, 213, 37),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 78,
                              top: 23,
                              child: Text(
                                " Hyperparameter Optimization",
                                style: TextStyle(
                                  fontFamily: "Sora",
                                  height: 1.0,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 78,
                                  top: 40), // Padding untuk jarak dari atas
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.people_alt_outlined,
                                    color: Color.fromARGB(255, 249, 213, 37),
                                    size: 10.0,
                                  ), // Icon person
                                  SizedBox(
                                      width: 8), // Spacer antara ikon dan teks
                                  Text(
                                    '30 Peserta',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ), // Teks "Orang"
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 78,
                                  top: 55), // Padding untuk jarak dari atas
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color.fromARGB(255, 249, 213, 37),
                                    size: 10.0,
                                  ), // Icon person
                                  SizedBox(
                                      width: 8), // Spacer antara ikon dan teks
                                  Text(
                                    '2 Maret 2024 - 3 April 2024',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ), // Teks "Orang"
                                ],
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 270, bottom: 10.0), // Padding untuk tombol
              child: ElevatedButton(
                onPressed: () {},
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
