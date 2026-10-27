import 'package:flutter/material.dart';
import 'sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Beranda"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_hospital, size: 80),
            SizedBox(height: 12),
            Text(
              "Selamat Datang di Klinik APP",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}