import 'package:flutter/material.dart';
import 'package:pertemuan8_ardhi/pertemuan8.dart';


class Home extends StatelessWidget {
  const Home ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Halaman Utama'),
      backgroundColor: Colors.blue[900], // Latar belakang biru tua
        titleTextStyle: const TextStyle(
          color: Colors.white, // Warna teks putih
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Bentuk elips
                  ),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pertemuan8()));
                },
                child: const Text('Pertemuan 6')),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),          
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Bentuk elips
                  ),
              ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    
                    MaterialPageRoute(builder: (context) => const Pertemuan8()),
                    (route) => false);
                },
                child: const Text('Pertemuan 8')),
          )
        ],
      ) ,
    );
  }
}