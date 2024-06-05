import 'package:pngajar/uiuxgrup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KursusMahasiswa extends StatefulWidget {
  @override
  _KursusMahasiswaState createState() => _KursusMahasiswaState();
}

class _KursusMahasiswaState extends State<KursusMahasiswa> {
  bool showKelas = true;

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
                    onTap: () {
                      setState(() {
                        showKelas = true;
                      });
                    },
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
                            right: 10,
                            top: 55,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showKelas = false;
                                });
                              },
                              child: Container(
                                child: Text('Kelompok Belajar'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  showKelas ? buildKelasList() : buildKelompokBelajarList(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 270, bottom: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 50),
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF3158DA),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildKelasList() {
    return Column(
      children: [
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
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(3, 20),
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
                          width: 58,
                          height: 57,
                          'images/kelasuiux.png',
                        )
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
                    padding: const EdgeInsets.only(left: 78, top: 40),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.people_alt_outlined,
                          color: Color.fromARGB(255, 249, 213, 37),
                          size: 10.0,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '40 Peserta',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 78, top: 55),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 249, 213, 37),
                          size: 10.0,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '24 Juni 2024 - 30 Juli 2024',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
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
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(3, 20),
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
                          width: 58,
                          height: 57,
                          'images/kelasreduksi.png',
                        )
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
                    padding: const EdgeInsets.only(left: 78, top: 40),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.people_alt_outlined,
                          color: Color.fromARGB(255, 249, 213, 37),
                          size: 10.0,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '23 Peserta',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 78, top: 55),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 249, 213, 37),
                          size: 10.0,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '24 Januari - 25 Februari 2024',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
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
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(3, 20),
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
                          width: 58,
                          height: 57,
                          'images/kelashpo.png',
                        )
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
                    padding: const EdgeInsets.only(left: 78, top: 40),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.people_alt_outlined,
                          color: Color.fromARGB(255, 249, 213, 37),
                          size: 10.0,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '30 Peserta',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 78, top: 55),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 249, 213, 37),
                          size: 10.0,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '2 Maret 2024 - 3 April 2024',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
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
    );
  }

  Widget buildKelompokBelajarList() {
    return Column(
      children: [
        GroupItem(
          imagePath: 'images/image1.png',
          groupName: "DATA ANALYSIS Group’s",
          participants: '12 Peserta',
          onTap: () {
            // Aksi saat container diklik
          },
        ),
        const SizedBox(height: 5),
        GroupItem(
          imagePath: 'images/image2.png',
          groupName: "PROYEK 1 Group’s",
          participants: '12 Peserta',
          onTap: () {
            // Aksi saat container diklik
          },
        ),
        const SizedBox(height: 5),
        GroupItem(
          imagePath: 'images/image6.png',
          groupName: "Java's Group’s",
          participants: '12 Peserta',
          onTap: () {
            // Aksi saat container diklik
          },
        ),
        GroupItem(
          imagePath: 'images/image5.png',
          groupName: "ALGORITHM Group’s",
          participants: '12 Peserta',
          onTap: () {
            // Aksi saat container diklik
          },
        ),
        const SizedBox(height: 10),
        GroupItem(
          imagePath: 'images/image4.png',
          groupName: "UI/UX Group’s",
          participants: '12 Peserta',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GroupClicked5()),
            );
          },
        ),
        const SizedBox(height: 10),
        // Tambahkan lebih banyak kelompok belajar seperti di atas sesuai kebutuhan
      ],
    );
  }
}

class GroupItem extends StatelessWidget {
  final String imagePath;
  final String groupName;
  final String participants;
  final VoidCallback onTap;

  const GroupItem({
    required this.imagePath,
    required this.groupName,
    required this.participants,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 29, top: 12),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(239, 242, 250, 1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 48,
                height: 48,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    groupName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "Sora",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    participants,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Sora",
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
