import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatelessWidget {
  const PegawaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.add),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PegawaiForm(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
            pegawai: Pegawai(
              id: 1,
              nip: "198501012010011001",
              nama: "Budi Santoso",
              tanggalLahir: "1985-01-01",
              nomorTelepon: "081234567890",
              email: "budi@klinik.com",
              password: "123456",
            ),
          ),
          PegawaiItem(
            pegawai: Pegawai(
              id: 2,
              nip: "199003152015022002",
              nama: "Siti Aminah",
              tanggalLahir: "1990-03-15",
              nomorTelepon: "082345678901",
              email: "siti@klinik.com",
              password: "123456",
            ),
          ),
          PegawaiItem(
            pegawai: Pegawai(
              id: 3,
              nip: "199207202018031003",
              nama: "Oktavia Diva Ramadhan",
              tanggalLahir: "2006-10-12",
              nomorTelepon: "083456789012",
              email: "oktavia@klinik.com",
              password: "123456",
            ),
          ),
        ],
      ),
    );
  }
}