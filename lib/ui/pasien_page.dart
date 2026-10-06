import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';

class PasienPage extends StatelessWidget {
  const PasienPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
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
                  builder: (context) => const PasienForm(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
            pasien: Pasien(
              id: 1,
              nomorRm: "RM-0001",
              nama: "Rina Marlina",
              tanggalLahir: "1998-05-10",
              nomorTelepon: "081111111111",
              alamat: "Jl. Melati No. 5, Jakarta",
            ),
          ),
          PasienItem(
            pasien: Pasien(
              id: 2,
              nomorRm: "RM-0002",
              nama: "Azdka Pratama",
              tanggalLahir: "2006-07-22",
              nomorTelepon: "082222222222",
              alamat: "Jl. Harapan Indah No. 6E, Jakarta Timur",
            ),
          ),
          PasienItem(
            pasien: Pasien(
              id: 3,
              nomorRm: "RM-0003",
              nama: "Lia Permata",
              tanggalLahir: "2001-02-03",
              nomorTelepon: "083333333333",
              alamat: "Jl. Mawar No. 8, Depok",
            ),
          ),
        ],
      ),
    );
  }
}