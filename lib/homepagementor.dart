import 'package:flutter/widgets.dart';
import 'package:pngajar/chatmentor.dart';
import 'package:pngajar/daftarkelasmentor.dart';
import 'profiladmin.dart';
import 'package:flutter/material.dart';
import 'package:pngajar/notifadmin.dart';
import 'package:pngajar/ajuiklanadmin.dart';
import 'formkelas.dart';

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

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<GroupItem> _groups = [
    GroupItem(
      imagePath: 'images/kelasuiux.png',
      groupName: "UI-UX RESEARCH AND DESIGN",
      participants: '40 Peserta',
      onDelete: () {},
      onTap: () {},
      onEdit: () {},
    ),
  ];

  void _removeGroup(int index) {
    setState(() {
      _groups.removeAt(index);
    });
  }

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
                  'Hai Fateh,',
                  style:
                      TextStyle(fontSize: 12, fontFamily: "Sora", height: 2.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 30, top: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Semangat mengajar !',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Sora",
                          height: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications), // Icon notifikasi
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationsScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35, top: 2),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DaftarKelas()),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Kelas',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Sora",
                              height: 2.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Semua',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Sora",
                                    height: 2.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3158DA)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors
                                    .blue, // Ganti dengan warna yang diinginkan
                                size:
                                    14.0, // Ganti dengan ukuran yang diinginkan
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _groups.length,
                      itemBuilder: (context, index) {
                        return GroupItem(
                          key: ValueKey(_groups[index]),
                          imagePath: _groups[index].imagePath,
                          groupName: _groups[index].groupName,
                          participants: _groups[index].participants,
                          onTap: () {
                            // Aksi saat container diklik
                          },
                          onEdit: () {
                            // Aksi saat tombol edit diklik
                          },
                          onDelete: () {
                            _removeGroup(index);
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FormKelas()),
                        );
                      },
                      child: Text(
                        '+ Kelas',
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        minimumSize: Size(350, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF3158DA),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35, top: 2),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Iklan',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Sora",
                              height: 2.0,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              'Semua',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Sora",
                                  height: 2.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF3158DA)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors
                                  .blue, // Ganti dengan warna yang diinginkan
                              size: 14.0, // Ganti dengan ukuran yang diinginkan
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Kelola Iklan',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 196, 196, 196)),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AjuIklanAdmin()),
                        );
                      },
                      child: Text(
                        '+ Iklan',
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        minimumSize: Size(350, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF3158DA),
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

class GroupItem extends StatefulWidget {
  final String imagePath;
  final String groupName;
  final String participants;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const GroupItem({
    Key? key,
    required this.imagePath,
    required this.groupName,
    required this.participants,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  _GroupItemState createState() => _GroupItemState();
}

class _GroupItemState extends State<GroupItem> {
  void _showEditOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    widget.imagePath,
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.groupName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Hapus'),
                onTap: () {
                  widget.onDelete();
                  Navigator.pop(context); // Menutup bottom sheet
                },
              ),
              ListTile(
                leading: const Icon(Icons.cancel),
                title: const Text('Batal'),
                onTap: () {
                  Navigator.pop(context); // Menutup bottom sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
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
                  widget.imagePath,
                  width: 58,
                  height: 57,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 78, top: 23),
                child: Text(
                  widget.groupName,
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
                      widget.participants,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 4,
                top: 2,
                child: IconButton(
                  icon: Icon(Icons.edit, color: Color(0xFF3158DA), size: 13),
                  onPressed: () {
                    _showEditOptions(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatMentor(
      mentorName: 'Jane Cooper', // Ganti dengan nama mentor
      mentorImage: 'path_to_mentor_image',
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfilPageAdmin();
  }
}
