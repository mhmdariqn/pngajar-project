import 'package:flutter/material.dart';
import 'materimentor.dart'; // Import the MateriMentor page

class SuksesMateri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materi'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MateriMentor()),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _StepBar(activeStep: 3),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi saat tombol update ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFEFF0F6),
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Color(0xFF3158DA),
                    size: 48.0,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Sukses',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Sora',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Materi yang Anda tambahkan sukses untuk ditambahkan pada daftar kelas.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Sora',
                      color: Color(0xFF7C7C7C),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}

class _StepBar extends StatelessWidget {
  final int activeStep;

  const _StepBar({Key? key, required this.activeStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _StepCircle(number: 1, isActive: activeStep == 1),
        _StepLine(),
        _StepCircle(number: 2, isActive: activeStep == 2),
        _StepLine(),
        _StepCircle(number: 3, isActive: activeStep == 3),
      ],
    );
  }
}

class _StepCircle extends StatelessWidget {
  final int number;
  final bool isActive;

  const _StepCircle({Key? key, required this.number, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isActive ? Color(0xFF3158DA) : Colors.grey,
      child: Text(
        '$number',
        style: TextStyle(
          color: isActive ? Colors.white : Color.fromARGB(255, 6, 70, 123),
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _StepLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 2,
      color: Colors.grey,
    );
  }
}
