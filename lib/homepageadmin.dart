import 'package:pngajar/bannerclicked1.dart';
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

class HomePageAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 29,
                    right: 30,
                    top: 5), // Padding untuk jarak dari atas
                child: const Text(
                  'Hai John,',
                  style:
                      TextStyle(fontSize: 12, fontFamily: "Sora", height: 2.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nikmati proses belajar !',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sora",
                          height: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons
                          .notifications), // Icon notifikasi (ganti dengan icon yang sesuai)
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 1),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200], // Warna latar belakang
                    filled: true, // Aktifkan latar belakang yang diisi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          14), // Menambahkan border radius
                      borderSide: BorderSide.none, //Menghilangkan outline
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons
                            .search, // Ikonya bisa berupa Icons.visibility atau Icons.visibility_off
                        color: const Color(
                            0xFF3158DA), // Sesuaikan dengan warna ikon yang diinginkan
                      ),
                      onPressed: () {},
                    ),
                    hintText: 'Cari..',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 12),
                child: Row(
                  children: [
                    Image.asset(
                      'images/banner1.png',
                      width: 328, // Sesuaikan dengan ukuran yang diinginkan
                      height: 160,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Courses',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sora",
                          height: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 29, top: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Semua',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Sora",
                        height: 2.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3158DA),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons
                          .arrow_right_outlined), // Icon notifikasi (ganti dengan icon yang sesuai)
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 8),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 10), // Spasi awal
                      CategoryButton(text: 'Graphic Design'),
                      SizedBox(width: 10),
                      CategoryButton(text: 'Matematika'),
                      SizedBox(width: 10),
                      CategoryButton(text: 'Ilmu Data'),
                      SizedBox(width: 10), // Spasi akhir
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 12),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BannerClicked1()),
                        );
                      },
                      child: Image.asset(
                        'images/banner2.png',
                        width: 280, // Sesuaikan dengan ukuran yang diinginkan
                        height: 273,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Featured study groups',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sora",
                          height: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 29, top: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Semua',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Sora",
                        height: 2.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF3158DA),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons
                          .arrow_right_outlined), // Icon notifikasi (ganti dengan icon yang sesuai)
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              //Kelompok Belajar
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
                          color: Colors.grey.withOpacity(0.2), // Warna bayangan
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
                          color: Colors.grey.withOpacity(0.2), // Warna bayangan
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
                            children: [
                              Container(
                                width:
                                    58, // Sesuaikan dengan ukuran yang diinginkan
                                height: 57,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 193, 193, 193),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
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
                          color: Colors.grey.withOpacity(0.2), // Warna bayangan
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
                            children: [
                              Container(
                                width:
                                    58, // Sesuaikan dengan ukuran yang diinginkan
                                height: 57,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 193, 193, 193),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
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
                          color: Colors.grey.withOpacity(0.2), // Warna bayangan
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
                            children: [
                              Container(
                                width:
                                    58, // Sesuaikan dengan ukuran yang diinginkan
                                height: 57,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 193, 193, 193),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
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
                          color: Colors.grey.withOpacity(0.2), // Warna bayangan
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
                            children: [
                              Container(
                                width:
                                    58, // Sesuaikan dengan ukuran yang diinginkan
                                height: 57,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 193, 193, 193),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
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
                          color: Colors.grey.withOpacity(0.2), // Warna bayangan
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
                            children: [
                              Container(
                                width:
                                    58, // Sesuaikan dengan ukuran yang diinginkan
                                height: 57,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 193, 193, 193),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Kursus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 0,
        unselectedItemColor:
            Color.fromRGBO(191, 203, 244, 1), // Indeks dari item yang terpilih
        selectedItemColor:
            const Color(0xFF3158DA), // Warna dari item yang terpilih
        onTap: (int index) {
          // Handle ketika item navigasi bawah ditekan
          // Anda bisa menambahkan navigasi ke halaman lain di sini
        },
      ),
    );
  }
}
