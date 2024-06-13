import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DetailKelasMentor extends StatefulWidget {
  final int id;

  DetailKelasMentor({required this.id});

  @override
  _DetailKelasMentorState createState() => _DetailKelasMentorState();
}

class _DetailKelasMentorState extends State<DetailKelasMentor> {
  Map<String, dynamic>? kelasDetail;

  @override
  void initState() {
    super.initState();
    _fetchDetailKelas();
  }

  Future<void> _fetchDetailKelas() async {
    final response = await http.get(
      Uri.parse(
          'http://172.20.10.3/pngajarphp/buatkelas/kelas_read.php?id=${widget.id}'),
    );

    if (response.statusCode == 200) {
      setState(() {
        kelasDetail = json.decode(response.body);
      });
    } else {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal mengambil data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: kelasDetail == null
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildDetailItem('Nama Kelas', kelasDetail!['namakelas']),
                  buildDetailItem('Mata Kuliah', kelasDetail!['matkul']),
                  buildDetailItem('Tanggal Mulai', kelasDetail!['tglmulai']),
                  buildDetailItem('Tanggal Akhir', kelasDetail!['tglakhir']),
                  buildDetailItem(
                      'Jumlah Pertemuan', kelasDetail!['jmlhpertemuan']),
                  buildDetailItem('Jumlah Mahasiswa', kelasDetail!['jmlhmhs']),
                  buildDetailItem('Harga', kelasDetail!['harga']),
                  buildDetailItem('Harga Minimum', kelasDetail!['hargamin']),
                  buildDetailItem('Deskripsi', kelasDetail!['deskripsi']),
                ],
              ),
            ),
    );
  }

  Widget buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
