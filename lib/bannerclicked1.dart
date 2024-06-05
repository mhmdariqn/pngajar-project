import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BannerClicked1 extends StatefulWidget {
  @override
  _BannerClicked1State createState() => _BannerClicked1State();
}

class _BannerClicked1State extends State<BannerClicked1> {
  void _showBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200, // Adjust height as needed
          decoration: BoxDecoration(
            color:
                Colors.white, // Background color of the bottom navigation bar
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, -3), // Offset in the negative y direction
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 34.0,
                top: 28.0,
                child: Text(
                  'Harga Awal',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                right: 16.0,
                top: 16.0,
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.grey),
                  onPressed: () {
                    Navigator.pop(context); // Close the bottom sheet
                  },
                ),
              ),
              Positioned(
                left: 34.0,
                top: 73.0,
                child: Text(
                  'Rp. 30.000',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3158DA),
                  ),
                ),
              ),
              Positioned(
                left: 128.0,
                top: 75.0,
                child: Text(
                  ' - Tawarkan harga',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                left: 34.0,
                top: 100.0,
                child: Text(
                  'sesuai budget anda',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                right: 16.0,
                top: 72.24,
                child: IconButton(
                  icon: Icon(Icons.wallet,
                      color: Color.fromARGB(255, 57, 189, 0)),
                  onPressed: _showBottomSheet2,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0), // Padding for button
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Daftar',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.02,
                          horizontal: MediaQuery.of(context).size.width * 0.4),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF3158DA), // Text color
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showBottomSheet2() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400, // Adjust height as needed
          decoration: BoxDecoration(
            color:
                Colors.white, // Background color of the bottom navigation bar
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, -3), // Offset in the negative y direction
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 34.0,
                top: 28.0,
                child: Text(
                  'Harga Awal',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                right: 16.0,
                top: 16.0,
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.grey),
                  onPressed: () {
                    Navigator.pop(context); // Close the bottom sheet
                  },
                ),
              ),
              Positioned(
                left: 34.0,
                top: 53.0,
                child: Text(
                  'Rp. 30.000',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF3158DA),
                  ),
                ),
              ),
              Positioned(
                right: 34.0,
                left: 34.0,
                top: 93.0,
                child: Container(
                  width: 200, // Tentukan lebar yang diinginkan
                  height: 50, // Tentukan tinggi yang diinginkan
                  child: TextField(
                    keyboardType: TextInputType
                        .number, // Mengatur jenis keyboard menjadi angka
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200], // Warna latar belakang
                      filled: true, // Aktifkan latar belakang yang diisi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            14), // Menambahkan border radius
                        borderSide: BorderSide.none, //Menghilangkan outline
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0), // Padding for button
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Ajukan',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.02,
                          horizontal: MediaQuery.of(context).size.width * 0.4),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF3158DA), // Text color
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

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
                  'images/uiux.png',
                ),
                SizedBox(height: 16), // Spacer
                Padding(
                  padding: const EdgeInsets.only(left: 29, right: 30, top: 5),
                  child: const Text(
                    'Graphic Design',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 249, 213, 37),
                    ),
                  ),
                ),
                SizedBox(height: 8), // Spacer
                Padding(
                  padding: const EdgeInsets.only(left: 29, right: 30, top: 5),
                  child: const Text(
                    'UI-UX RESEARCH AND DESIGN',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ), // Spacer
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Row(
                    children: [
                      Icon(Icons.person_outlined,
                          color:
                              Color.fromARGB(255, 249, 213, 37)), // Icon person
                      SizedBox(width: 8), // Spacer antara ikon dan teks
                      Text(
                        'Jonas Wolfhard',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ), // Teks "Orang"
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Row(
                    children: [
                      Icon(Icons.people_alt_outlined,
                          color:
                              Color.fromARGB(255, 249, 213, 37)), // Icon person
                      SizedBox(width: 8), // Spacer antara ikon dan teks
                      Text(
                        '40 Peserta',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ), // Teks "Orang"
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Row(
                    children: [
                      Icon(Icons.people_alt,
                          color:
                              Color.fromARGB(255, 249, 213, 37)), // Icon person
                      SizedBox(width: 8), // Spacer antara ikon dan teks
                      Text(
                        '4x Pertemuan',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ), // Teks "Orang"
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Row(
                    children: [
                      Icon(Icons.calendar_month_outlined,
                          color:
                              Color.fromARGB(255, 249, 213, 37)), // Icon person
                      SizedBox(width: 8), // Spacer antara ikon dan teks
                      Text(
                        '24 Juni 2024 - 30 Juli 2024',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ), // Teks "Orang"
                    ],
                  ),
                ),
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
                    'Peningkatan yang signifikan dalam pengembangan produk digital seperti aplikasi dan situs web telah membuka peluang yang luas bagi profesi UI-UX Researcher and Designer. Permintaan akan keterampilan ini semakin',
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
                    'Baca Selengkapnya',
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      color: const Color(0xFF3158DA),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 29,
                      right: 30,
                      top: 5), // Padding untuk jarak dari atas
                  child: const Text(
                    'Materi',
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
                    '* Fundamental UI-UX Design',
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
                    '* UX Design, Research & Writing',
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
                    '* User Flow & Wireframing',
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
                    '* Complete Figma',
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
                    '* UI Design & Components',
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
                    '* Prototyping & Many More!',
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
                onPressed: _showBottomSheet,
                child: const Text(
                  'Daftar',
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
