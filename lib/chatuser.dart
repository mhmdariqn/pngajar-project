import 'package:flutter/material.dart';

class ChatUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.chat, // Ikon chat
                  size: 40, // Sesuaikan ukuran ikon sesuai kebutuhan
                  color: Colors.grey, // Sesuaikan warna ikon sesuai kebutuhan
                ),
                SizedBox(
                    height:
                        8), // Jarak antara ikon dan teks, sesuaikan sesuai kebutuhan
                Text(
                  'Room Chat',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
            top: 57, // Posisi ikon di atas
            left: 20, // Sesuaikan posisi sesuai kebutuhan
            right:
                20, // Tambahkan posisi kanan untuk memastikan widget berada di tengah layar
            child: Row(
              children: [
                SizedBox(
                  width:
                      8, // Jarak antara ikon dan teks, sesuaikan sesuai kebutuhan
                ),
                Text(
                  'Pesan', // Teks yang ingin ditampilkan di samping ikon
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight
                        .bold, // Sesuaikan warna teks sesuai kebutuhan
                    fontSize: 24, // Sesuaikan ukuran font sesuai kebutuhan
                  ),
                ),
                Spacer(), // Spacer untuk mendorong elemen berikutnya ke kanan
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Tambahkan aksi yang diinginkan saat tombol pencarian ditekan
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
