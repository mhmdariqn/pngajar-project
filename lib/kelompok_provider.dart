// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class KelompokProvider with ChangeNotifier {
//   List<dynamic> _kelompok = [];

//   List<dynamic> get kelompok => _kelompok;

//   Future<void> fetchKelompok() async {
//     final response = await http.get(Uri.parse('http://localhost/flutter_api/api.php?action=get_kelompok'));
//     if (response.statusCode == 200) {
//       _kelompok = json.decode(response.body);
//       notifyListeners();
//     } else {
//       throw Exception('Failed to load kelompok');
//     }
//   }

//   Future<void> addKelompok(Map<String, String> newKelompok) async {
//     final response = await http.post(
//       Uri.parse('http://localhost/flutter_api/api.php?action=add_kelompok'),
//       body: json.encode(newKelompok),
//     );
//     if (response.statusCode == 201) {
//       fetchKelompok();
//     } else {
//       throw Exception('Failed to add kelompok');
//     }
//   }

//   Future<void> updateKelompok(int id, Map<String, String> updatedKelompok) async {
//     final response = await http.put(
//       Uri.parse('http://localhost/flutter_api/api.php?action=update_kelompok&id=$id'),
//       body: json.encode(updatedKelompok),
//     );
//     if (response.statusCode == 200) {
//       fetchKelompok();
//     } else {
//       throw Exception('Failed to update kelompok');
//     }
//   }

//   Future<void> deleteKelompok(int id) async {
//     final response = await http.delete(
//       Uri.parse('http://localhost/flutter_api/api.php?action=delete_kelompok&id=$id'),
//     );
//     if (response.statusCode == 200) {
//       fetchKelompok();
//     } else {
//       throw Exception('Failed to delete kelompok');
//     }
//   }
// }
