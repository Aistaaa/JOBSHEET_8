import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Row, Column, dan Wrap',
            style: TextStyle(color: Colors.white), // Warna teks putih
          ),
          backgroundColor: Color.fromARGB(255, 243, 53, 170), // Warna baru untuk AppBar
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Wrap(
              spacing: 20.0, // Jarak antara kotak horizontal
              runSpacing: 20.0, // Jarak antara kotak vertical
              children: [
                buatKotak(Color.fromARGB(211, 231, 24, 9), 120, null),
                buatKotak(Color.fromARGB(255, 247, 7, 195), 110, null),
                buatKotak(Color.fromARGB(255, 142, 247, 5), 100, 'Esta'),
                buatKotak(Color.fromARGB(255, 19, 18, 19), 20, null),
                buatKotak(Color.fromARGB(255, 221, 236, 163), 20, null),
                buatKotak(Color.fromARGB(255, 111, 103, 228), 30, null),
                buatKotak(Color.fromARGB(255, 174, 10, 207)!, 40, null),
                buatKotak(Color.fromARGB(255, 126, 214, 236), 50, null),
                buatKotak(Color.fromARGB(255, 21, 10, 165), 80, null),
                buatKotak(Color.fromARGB(255, 209, 157, 219)!, 90, null), // Warna null pada kotak terakhir
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buatKotak(Color warna, double ukuran, String? nama) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Memastikan agar hanya menempati ruang yang diperlukan
      children: [
        Container(
          decoration: BoxDecoration(
            color: warna,
            border: Border.all(),
          ),
          height: ukuran,
          width: ukuran,
        ),
        SizedBox(height: 5),
        if (nama != null && nama.isNotEmpty) // Tampilkan teks jika nama tidak null atau kosong
          Text(
            nama,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}

void main() {
  runApp(MyApp());
}
