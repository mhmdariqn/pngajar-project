import 'package:flutter/material.dart';
import 'materimentor.dart'; // Pastikan ini adalah path yang benar

class DropDownKlsMentor extends StatelessWidget {
  final String imagePath;
  final String title;

  const DropDownKlsMentor({
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Image.asset(imagePath, width: 50, height: 50),
            title: Text(title),
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Hapus',
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.delete, color: Color(0xFF3158DA)),
            onTap: () {
              // Logika hapus
            },
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Ubah',
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.edit, color: Color(0xFF3158DA)),
            onTap: () {
              // Logika ubah
            },
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Materi',
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.list_alt, color: Color(0xFF3158DA)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MateriMentor()),
              );
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 12.0),
            child: Text(
              'Batal',
              style: TextStyle(color: Colors.yellow[700], fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
