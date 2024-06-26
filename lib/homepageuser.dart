import 'package:pngajar/chatuser.dart';
import 'profil.dart';
import 'usercourse.dart';
import 'package:flutter/material.dart';
import 'package:pngajar/uiuxgrup.dart';
import 'package:pngajar/bannerclicked1.dart';

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

class HomePageUser extends StatefulWidget {
  @override
  _HomePageUserState createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CoursesScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Kursus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color.fromRGBO(191, 203, 244, 1),
        selectedItemColor: Color(0xFF3158DA),
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
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
              const Padding(
                padding: EdgeInsets.only(
                    left: 29,
                    right: 30,
                    top: 5), // Padding untuk jarak dari atas
                child: Text(
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
                    const Text(
                      'Nikmati proses belajar !',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sora",
                          height: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications), // Icon notifikasi
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
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
                      icon: const Icon(
                        Icons
                            .search, // Ikonya bisa berupa Icons.visibility atau Icons.visibility_off
                        color: Color(
                            0xFF3158DA), // Sesuaikan dengan warna ikon yang diinginkan
                      ),
                      onPressed: () {},
                    ),
                    hintText: 'Cari..',
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19, right: 19, top: 12),
                child: Row(
                  children: [
                    Image.asset(
                      'images/banner1.png',
                      width: 318, // Sesuaikan dengan ukuran yang diinginkan
                      height: 160,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 29, right: 30, top: 2),
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
                    const Text(
                      'Semua',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Sora",
                        height: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3158DA),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                          Icons.arrow_right_outlined), // Icon notifikasi
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
                    children: const [
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
              const Padding(
                padding: EdgeInsets.only(left: 29, right: 30, top: 2),
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
                    const Text(
                      'Semua',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Sora",
                        height: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3158DA),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons
                          .keyboard_arrow_right_rounded), // Icon notifikasi
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  GroupItem(
                    imagePath: 'images/image1.png',
                    groupName: "DATA ANALYSIS Group’s",
                    participants: '12 Peserta',
                    onTap: () {
                      // Aksi saat container diklik
                    },
                  ),
                  GroupItem(
                    imagePath: 'images/image2.png',
                    groupName: "PROYEK 1 Group’s",
                    participants: '12 Peserta',
                    onTap: () {
                      // Aksi saat container diklik
                    },
                  ),
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
                  GroupItem(
                    imagePath: 'images/image4.png',
                    groupName: "UI/UX Group’s",
                    participants: '12 Peserta',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GroupClicked5()),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
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
              Positioned(
                left: 78,
                top: 23,
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
                    const Icon(
                      Icons.people_alt_outlined,
                      color: Color(0xFF3158DA),
                      size: 10.0,
                    ),
                    SizedBox(width: 8),
                    Text(
                      participants,
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
  }
}

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KursusMahasiswa();
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatUser();
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfilPageUser();
  }
}
