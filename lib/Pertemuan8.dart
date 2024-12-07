import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pertemuan8_ardhi/home.dart';

class Pertemuan8 extends StatelessWidget {
  const Pertemuan8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 8'),
        backgroundColor: Colors.blue[900], // Latar belakang biru tua
        titleTextStyle: const TextStyle(
          color: Colors.white, // Warna teks putih
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          // Fluttertoast
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'Selamat Datang!',
                  toastLength: Toast.LENGTH_SHORT,
                  timeInSecForIosWeb: 3,
                  backgroundColor: Colors.purple, // Default solid color
                  textColor: Colors.white,
                  webBgColor: "linear-gradient(to right, purple, lime)", // Gradien
                  fontSize: 16.0,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900], // Warna latar belakang tombol
                foregroundColor: Colors.white, // Warna teks
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Bentuk tombol melengkung
                ),
              ),
              child: const Text('Contoh Flutter Toast'),
            ),
          ),

          // Snackbar
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                final sB = SnackBar(
                  content: const Text('Hallo, disini snackbar'),
                  backgroundColor: Colors.purple, // Warna ungu
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Bentuk elips
                  ),
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  action: SnackBarAction(
                    label: 'Tutup',
                    textColor: Colors.lime, // Warna aksi lime
                    onPressed: () {
                      // Tambahkan aksi di sini
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(sB);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Bentuk elips
                  ),
              ),
              child: const Text('Contoh Snack Bar'),
            ),
          ),

          // Tooltip
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Tooltip(
              message: 'Silahkan tekan tombol ini',
              decoration: BoxDecoration(
                color: Colors.lime,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(10), // Padding tambahan
              showDuration: const Duration(seconds: 3), // Durasi tampil
              waitDuration: const Duration(seconds: 1), // Waktu tunggu sebelum tampil
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Bentuk elips
                  ),
                ),
                child: const Text('Contoh Tooltip'),
              ),
            ),
          ),

          // Navigasi ke halaman utama
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Bentuk elips
                  ),
              ),
              child: const Text('Kembali ke halaman Utama'),
            ),
          ),
        ],
      ),
    );
  }
}
