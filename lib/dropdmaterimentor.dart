import 'package:flutter/material.dart'; // Ensure this is the correct path

class DropDownMateriMentor extends StatelessWidget {
  final String imagePath;
  final String title;

  const DropDownMateriMentor({
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
            leading: Icon(Icons.delete, color: Color(0xFF3158DA)),
            title: Text(
              'Hapus',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            onTap: () {
              // Add delete logic here
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit, color: Color(0xFF3158DA)),
            title: Text(
              'Ubah',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            onTap: () {
              // Add edit logic here
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.visibility_off, color: Color(0xFF3158DA)),
            title: Text(
              'Disembunyikan',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            onTap: () {
              // Add hide logic here
            },
          ),
          Divider(),
          ListTile(
            title: Center(
              child: Text(
                'Batal',
                style: TextStyle(color: Colors.orange, fontSize: 16),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
