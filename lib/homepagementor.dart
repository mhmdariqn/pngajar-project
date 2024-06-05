import 'package:pngajar/bannerclicked1.dart';
import 'package:flutter/material.dart';
import 'mentorcourse.dart'; // Import KursusPage

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

class HomePageMentor extends StatefulWidget {
  @override
  _HomePageMentorState createState() => _HomePageMentorState();
}

class _HomePageMentorState extends State<HomePageMentor> {
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
    return SingleChildScrollView(
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
                  left: 29, right: 30, top: 5), // Padding untuk jarak dari atas
              child: const Text(
                'Hai Mentor,',
                style: TextStyle(fontSize: 12, fontFamily: "Sora", height: 2.0),
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
                    icon: Icon(Icons.notifications),
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
                    borderRadius: BorderRadius.circular(14), // Border radius
                    borderSide: BorderSide.none, //Menghilangkan outline
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: const Color(0xFF3158DA),
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
              padding: const EdgeInsets.only(left: 30, right: 29, top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Semua',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Sora",
                      height: 2.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3158DA),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_right_outlined),
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
          ],
        ),
      ),
    );
  }
}

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KursusPage();
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chat Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
