import 'package:pngajar/homepagementor.dart';
import 'package:pngajar/homepageadmin.dart';
import 'package:pngajar/homepageuser.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController katasandiController = TextEditingController();
  String message = '';
  bool obscureText = true;

  void _checkCredentials() {
    String email = emailController.text.trim();
    String katasandi = katasandiController.text.trim();

    if (email.isEmpty || katasandi.isEmpty) {
      setState(() {
        message = "Data tidak boleh kosong";
      });
    } else if (email == "user" && katasandi == "1234") {
      setState(() {
        message = "Login berhasil";
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePageUser()),
        );
      });
    } else if (email == "mentor" && katasandi == "1234") {
      setState(() {
        message = "Login berhasil";
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePageMentor()),
        );
      });
    } else if (email == "admin" && katasandi == "1234") {
      setState(() {
        message = "Login berhasil";
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePageAdmin()),
        );
      });
    } else {
      setState(() {
        message = "Kombinasi email dan katasandi salah";
      });
    }
  }

  void _goToSignUpPage() {
    // Navigasi ke halaman sign up
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 30), // Padding untuk jarak dari atas
                child: const Text(
                  'Selamat datang di Pngajar!',
                  style:
                      TextStyle(fontSize: 22, fontFamily: "Sora", height: 2.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Text(
                        'Silakan isi detail akun',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200], // Warna latar belakang
                    filled: true, // Aktifkan latar belakang yang diisi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          14), // Menambahkan border radius
                      borderSide: BorderSide.none, //Menghilangkan outline
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: katasandiController,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200], // Warna latar belakang
                    filled: true, // Aktifkan latar belakang yang diisi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          14), // Menambahkan border radius
                      borderSide: BorderSide.none, //Menghilangkan outline
                    ),
                    hintText: 'Kata Sandi',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons
                            .visibility, // Ikonya bisa berupa Icons.visibility atau Icons.visibility_off
                        color: Colors
                            .grey, // Sesuaikan dengan warna ikon yang diinginkan
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 10),
                      child: TextButton(
                        onPressed: _checkCredentials,
                        child: const Text('Lupa kata sandi?'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _checkCredentials,
                    child: const Text(
                      'Masuk',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.02,
                          horizontal: MediaQuery.of(context).size.width * 0.4),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF3158DA), // Text color
                    ),
                  ),
                ],
              ),
              SizedBox(height: 270),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed:
                        _goToSignUpPage, // Panggil fungsi _goToSignUpPage saat tombol ditekan
                    child: const Text('Belum memiliki akun? Daftar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 30), // Padding untuk jarak dari atas
                child: const Text(
                  'Selamat datang di Pngajar!',
                  style:
                      TextStyle(fontSize: 22, fontFamily: "Sora", height: 2.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Text(
                        'Silakan isi detail akun dan buat akun',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200], // Warna latar belakang
                    filled: true, // Aktifkan latar belakang yang diisi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          14), // Menambahkan border radius
                      borderSide: BorderSide.none, //Menghilangkan outline
                    ),
                    hintText: 'Nama lengkap',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200], // Warna latar belakang
                    filled: true, // Aktifkan latar belakang yang diisi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          14), // Menambahkan border radius
                      borderSide: BorderSide.none, //Menghilangkan outline
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200], // Warna latar belakang
                    filled: true, // Aktifkan latar belakang yang diisi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          14), // Menambahkan border radius
                      borderSide: BorderSide.none, //Menghilangkan outline
                    ),
                    hintText: 'Kata Sandi',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                        icon: Icon(
                          Icons
                              .visibility, // Ikonya bisa berupa Icons.visibility atau Icons.visibility_off
                          color: Colors
                              .grey, // Sesuaikan dengan warna ikon yang diinginkan
                        ),
                        onPressed: () {}),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200], // Warna latar belakang
                    filled: true, // Aktifkan latar belakang yang diisi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          14), // Menambahkan border radius
                      borderSide: BorderSide.none, //Menghilangkan outline
                    ),
                    hintText: 'Sebagai apakah anda',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                        icon: const Icon(
                          Icons
                              .arrow_drop_down, // Ikonya bisa berupa Icons.visibility atau Icons.visibility_off
                          color: Colors
                              .grey, // Sesuaikan dengan warna ikon yang diinginkan
                        ),
                        onPressed: () {}),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
