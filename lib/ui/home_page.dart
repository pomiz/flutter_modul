import 'package:flutter/material.dart';
import 'poli_page.dart';
import 'pegawai_page.dart';
import 'pasien_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _menu(BuildContext context, String label, Widget page) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(label),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Klinik APP"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _menu(context, "Data Poli", const PoliPage()),
            const SizedBox(height: 12),
            _menu(context, "Data Pegawai", const PegawaiPage()),
            const SizedBox(height: 12),
            _menu(context, "Data Pasien", const PasienPage()),
          ],
        ),
      ),
    );
  }
}