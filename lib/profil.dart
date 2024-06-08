import 'package:flutter/material.dart';
import 'package:pngajar/login.dart';

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
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 16,
        ),
      ),
    );
  }
}

class ProfilPageUser extends StatefulWidget {
  _ProfilPageUserState createState() => _ProfilPageUserState();
}

class _ProfilPageUserState extends State<ProfilPageUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Container(
                        decoration: const BoxDecoration(
                          color:
                              Color.fromRGBO(237, 176, 196, 1), // Warna abu-abu
                          shape: BoxShape.circle, // Bentuk bulat
                        ),
                        padding: const EdgeInsets.all(
                            0), // Menambahkan padding untuk ikon
                        child: Image.asset(
                          'images/johnatan.png',
                          fit: BoxFit
                              .cover, // Membuat gambar menutupi seluruh area
                        ),
                      ),
                      onPressed: () {
                        // Aksi saat ikon ditekan
                      },
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 29, right: 30, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Johnatan',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sora",
                          height: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 29, right: 30, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'D3 Sistem Informasi',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Sora",
                          color: Colors.grey,
                          height: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 31,
              ),
              GestureDetector(
                onTap: () {
                  // Aksi yang akan dilakukan saat Container diklik
                },
                child: Center(
                  child: Container(
                    height: 52,
                    width: 328,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.grey.withOpacity(0.09), // Warna bayangan
                          spreadRadius: 0, // Radius penyebaran
                          blurRadius: 10, // Radius blur
                          offset: const Offset(1,
                              20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                        ),
                      ],
                    ),
                    child: const Stack(
                      children: [
                        Positioned(
                          left: 32,
                          top: 10,
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_2_outlined,
                                color: Color(0xFF3158DA),
                                size: 34.0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 83,
                          top: 21,
                          child: Text(
                            "Akun",
                            style: TextStyle(
                              fontFamily: "Sora",
                              height: 1.0,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 32,
                          top: 10,
                          child: Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Color(0xFF3158DA),
                                size: 34.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Center(
                  child: Container(
                    height: 52,
                    width: 328,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.grey.withOpacity(0.09), // Warna bayangan
                          spreadRadius: 0, // Radius penyebaran
                          blurRadius: 10, // Radius blur
                          offset: const Offset(1,
                              20), // Offset bayangan, misalnya (3,3) untuk bayangan ke kanan bawah
                        ),
                      ],
                    ),
                    child: const Stack(
                      children: [
                        Positioned(
                          left: 32,
                          top: 10,
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout_rounded,
                                color: Color(0xFF3158DA),
                                size: 34.0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 83,
                          top: 21,
                          child: Text(
                            "Keluar",
                            style: TextStyle(
                              fontFamily: "Sora",
                              height: 1.0,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 32,
                          top: 10,
                          child: Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Color(0xFF3158DA),
                                size: 34.0,
                              ),
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
    );
  }
}
