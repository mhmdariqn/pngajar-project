import 'package:flutter/material.dart';
import 'package:pngajar/detailiklan1.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifikasi',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white, // Added to match the class list style
      ),
      body: ListView(
        children: <Widget>[
          NotificationTile(
            icon: Icons.group,
            title: 'Permintaan Kelompok Belajar',
            description:
                'Mahasiswa telah meminta dibuatkan kelompok belajar tentang basis data.',
            time: '10:37',
            iconColor: Color(0xFFFAC840),
            backgroundColor: Colors.white,
            rectangleColor: Color(0xFF3158DA),
            onTap: () {}, // Navigator kosong
          ),
          NotificationTile(
            icon: Icons.campaign,
            title: 'Permintaan Iklan Baru',
            description:
                'Mentor telah berhasil melakukan pembayaran, iklan pada kelas UIUX harus segera di unggah.',
            time: '10:37',
            iconColor: Color(0xFFFAC840),
            backgroundColor: Colors.white,
            rectangleColor: Color(0xFF3158DA),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailIklan()),
              );
            }, // Navigator untuk permintaan iklan baru
          ),
          NotificationTile(
            icon: Icons.class_,
            title: 'Kuota kelas telah terpenuhi',
            description:
                'Kuota kelas pada iklan telah terpenuhi pada kelas UIUX Design research.',
            time: '10:37',
            iconColor: Color(0xFFFAC840),
            backgroundColor: Colors.white,
            rectangleColor: Color(0xFF3158DA),
            onTap: () {}, // Navigator kosong
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String time;
  final Color iconColor;
  final Color backgroundColor;
  final Color rectangleColor;
  final void Function()? onTap; // Perubahan tipe data menjadi void Function()

  NotificationTile({
    required this.icon,
    required this.title,
    required this.description,
    required this.time,
    required this.iconColor,
    required this.backgroundColor,
    required this.rectangleColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          onTap, // Menggunakan onTap yang sudah sesuai dengan tipe data yang diharapkan
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor,
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
        child: Row(
          children: <Widget>[
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: rectangleColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, size: 40, color: iconColor),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
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
