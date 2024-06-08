import 'package:flutter/material.dart';
import 'package:pngajar/uiuxgrup.dart';
import 'package:pngajar/reqkelompokbelajar.dart';

class KursusMahasiswa extends StatefulWidget {
  @override
  _KursusMahasiswaState createState() => _KursusMahasiswaState();
}

class _KursusMahasiswaState extends State<KursusMahasiswa> {
  bool showKelas = true;

  final List<Map<String, String>> kelasList = [
    {
      'imagePath': 'images/kelasuiux.png',
      'title': 'Graphic Design',
      'description': 'UI-UX RESEARCH AND DESIGN',
      'participants': '40 Peserta',
      'date': '24 Juni 2024 - 30 Juli 2024'
    },
    {
      'imagePath': 'images/kelasreduksi.png',
      'title': 'Ilmu Data',
      'description': 'REDUKSI DIMENSI DATA',
      'participants': '23 Peserta',
      'date': '24 Januari - 25 Februari 2024'
    },
    {
      'imagePath': 'images/kelashpo.png',
      'title': 'Ilmu Data',
      'description': 'Hyperparameter Optimization',
      'participants': '30 Peserta',
      'date': '2 Maret 2024 - 3 April 2024'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kursusku',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight:
                FontWeight.bold, // Sesuaikan warna teks sesuai kebutuhan
            fontSize: 18, // Sesuaikan ukuran font sesuai kebutuhan
          ),
        ),
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
                                      height: 1.0,
                                      fontWeight: FontWeight.bold,
                                      color: showKelas
                                          ? const Color(0xFF3158DA)
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 50,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showKelas = false;
                                });
                              },
                              child: Container(
                                child: Text(
                                  'Kelompok Belajar',
                                  style: TextStyle(
                                    fontFamily: "Sora",
                                    height: 1.0,
                                    fontWeight: FontWeight.bold,
                                    color: showKelas
                                        ? Colors.grey
                                        : const Color(0xFF3158DA),
                                  ),
                                ),
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
          if (!showKelas) // Hanya tampilkan jika showKelas == false
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 20.0), // Jarak dari bawah
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReqGroup()),
                    );
                  },
                  child: Text(
                    'Ajukan Kelompok Belajar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    minimumSize: Size(350, 50),
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
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: kelasList.length,
      itemBuilder: (context, index) {
        final kelas = kelasList[index];
        return GestureDetector(
          onTap: () {
            // Aksi saat container diklik
          },
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
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
                    child: Image.asset(
                      kelas['imagePath']!,
                      width: 58,
                      height: 57,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 78, top: 5),
                    child: Text(
                      kelas['title']!,
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
                      kelas['description']!,
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
                    child: Row(
                      children: [
                        Icon(
                          Icons.people_alt_outlined,
                          color: Color.fromARGB(255, 249, 213, 37),
                          size: 10.0,
                        ),
                        SizedBox(width: 8),
                        Text(
                          kelas['participants']!,
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
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 249, 213, 37),
                          size: 10.0,
                        ),
                        SizedBox(width: 8),
                        Text(
                          kelas['date']!,
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
        );
      },
    );
  }

  Widget buildKelompokBelajarList() {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GroupItem(
          imagePath: 'images/image1.png',
          groupName: "DATA ANALYSIS Group’s",
          participants: '12 Peserta',
          onTap: () {
            // Aksi saat container diklik
          },
          isKelompok: !showKelas,
        ),
        GroupItem(
          imagePath: 'images/image2.png',
          groupName: "PROYEK 1 Group’s",
          participants: '12 Peserta',
          onTap: () {
            // Aksi saat container diklik
          },
          isKelompok: !showKelas,
        ),
        GroupItem(
          imagePath: 'images/image6.png',
          groupName: "Java's Group’s",
          participants: '12 Peserta',
          onTap: () {
            // Aksi saat container diklik
          },
          isKelompok: !showKelas,
        ),
        GroupItem(
          imagePath: 'images/image5.png',
          groupName: "ALGORITHM Group’s",
          participants: '12 Peserta',
          onTap: () {
            // Aksi saat container diklik
          },
          isKelompok: !showKelas,
        ),
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
          isKelompok: !showKelas,
        ),
      ],
    );
  }
}

class GroupItem extends StatelessWidget {
  final String imagePath;
  final String groupName;
  final String participants;
  final VoidCallback onTap;
  final bool isKelompok;

  const GroupItem({
    required this.imagePath,
    required this.groupName,
    required this.participants,
    required this.onTap,
    required this.isKelompok,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
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
                child: Image.asset(
                  imagePath,
                  width: 58,
                  height: 57,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 78, top: 23),
                child: Text(
                  groupName,
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
                child: Row(
                  children: [
                    Icon(
                      Icons.people_alt_outlined,
                      color: isKelompok
                          ? const Color(0xFF3158DA)
                          : Color.fromARGB(255, 249, 213, 37),
                      size: 10.0,
                    ),
                    SizedBox(width: 8),
                    Text(
                      participants,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
