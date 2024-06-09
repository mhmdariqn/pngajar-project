import 'package:flutter/material.dart';
import 'package:pngajar/formkelompokbelajar.dart';

// Reusable Group Item Widget
class GroupItem extends StatelessWidget {
  final String imagePath;
  final String groupName;
  final String participants;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final bool isKelompok;

  const GroupItem({
    required this.imagePath,
    required this.groupName,
    required this.participants,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
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
            color: Colors.white,
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
                  style: const TextStyle(
                    fontFamily: "Sora",
                    height: 1.0,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
                          : const Color.fromARGB(255, 249, 213, 37),
                      size: 10.0,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      participants,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: IconButton(
                  icon: Icon(Icons.edit, color: Colors.grey),
                  onPressed: onEdit,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Main DaftarKelompokBelajar Page
class DaftarKelompokBelajar extends StatefulWidget {
  @override
  _DaftarKelompokBelajarState createState() => _DaftarKelompokBelajarState();
}

class _DaftarKelompokBelajarState extends State<DaftarKelompokBelajar> {
  final List<Map<String, String>> _groupData = [
    {
      'imagePath': 'images/image1.png',
      'groupName': "DATA ANALYSIS Group’s",
      'participants': '12 Peserta',
    },
    {
      'imagePath': 'images/image2.png',
      'groupName': "PROYEK 1 Group’s",
      'participants': '12 Peserta',
    },
    {
      'imagePath': 'images/image6.png',
      'groupName': "Java's Group’s",
      'participants': '12 Peserta',
    },
    {
      'imagePath': 'images/image5.png',
      'groupName': "ALGORITHM Group’s",
      'participants': '12 Peserta',
    },
    {
      'imagePath': 'images/image4.png',
      'groupName': "UI/UX Group’s",
      'participants': '12 Peserta',
    },
  ];

  void _editGroup(int index) {
    final group = _groupData[index];
    TextEditingController groupNameController =
        TextEditingController(text: group['groupName']);
    TextEditingController participantsController =
        TextEditingController(text: group['participants']);

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    group['imagePath']!,
                    width: 58,
                    height: 57,
                  ),
                  SizedBox(width: 10),
                  Text(
                    group['groupName']!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.delete, color: Colors.red),
                title: Text('Hapus'),
                onTap: () {
                  setState(() {
                    _groupData.removeAt(index);
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.edit, color: Colors.blue),
                title: Text('Ubah'),
                onTap: () {
                  Navigator.of(context).pop();
                  _showEditForm(
                      index, groupNameController, participantsController);
                },
              ),
              ListTile(
                title: Center(
                  child: Text(
                    'Batal',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showEditForm(int index, TextEditingController groupNameController,
      TextEditingController participantsController) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16.0,
              right: 16.0,
              top: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: groupNameController,
                decoration: InputDecoration(labelText: 'Group Name'),
              ),
              TextField(
                controller: participantsController,
                decoration: InputDecoration(labelText: 'Participants'),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _groupData[index] = {
                          'imagePath': _groupData[index]['imagePath']!,
                          'groupName': groupNameController.text,
                          'participants': participantsController.text,
                        };
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text('Save'),
                  ),
                ],
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
      appBar: AppBar(
        title: Text(
          'Kelompok Belajar',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: buildKelompokBelajarList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormGroups()),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: const Color(0xFF3158DA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Ubah bentuk menjadi bundar
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget buildKelompokBelajarList() {
    return ListView.builder(
      itemCount: _groupData.length,
      itemBuilder: (context, index) {
        final group = _groupData[index];
        return GroupItem(
          imagePath: group['imagePath']!,
          groupName: group['groupName']!,
          participants: group['participants']!,
          onTap: () {
            // Aksi saat container diklik
          },
          onEdit: () {
            _editGroup(index);
          },
          onDelete: () {
            setState(() {
              _groupData.removeAt(index);
            });
          },
          isKelompok: true,
        );
      },
    );
  }
}
