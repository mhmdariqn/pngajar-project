import 'package:flutter/material.dart';

class GroupClicked5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/imageuiux.png',
                ),
                SizedBox(height: 8), // Spacer
                Padding(
                  padding: const EdgeInsets.only(left: 29, right: 30, top: 5),
                  child: const Text(
                    'UI/UX GROUP’S',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ), // Spacer
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Text(
                    'Bergabunglah dengan kelompok belajar kami yang fokus pada desain antarmuka (UI) dan pengalaman pengguna (UX). Kita akan mempelajari dasar-dasar desain, berlatih dengan berbagai tools, menganalisis studi kasus, dan bekerja sama dalam proyek-proyek kreatif.',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Text(
                    'Tujuan',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Text(
                    '* Menguasai keterampilan dasar UI/UX.',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const // Spacer
                      Text(
                    '* Menggali wawasan dari studi kasus dan praktek langsung.',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Text(
                    '* Mendorong kolaborasi dan pertukaran ide.',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 100), // Spacer to allow scrolling
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top +
                5, // Adjust the position as needed
            left: 10, // Adjust the position as needed
            child: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Colors.white), // Adjust color as needed
              onPressed: () {
                Navigator.pop(context); // Navigates back to the previous page
              },
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
                  'Bergabung',
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

// class ThreePersonsPainter extends CustomPainter {
//   final Color color;

//   ThreePersonsPainter(this.color);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..strokeWidth = 2.0 // Set the stroke width as needed
//       ..style = PaintingStyle.stroke;

//     // Draw first person
//     canvas.drawLine(
//       Offset(0, size.height / 2),
//       Offset(size.width, size.height / 2),
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
