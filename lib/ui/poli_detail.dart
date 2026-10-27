import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_update_form.dart';

class PoliDetail extends StatelessWidget {
  final Poli poli;

  const PoliDetail({
    super.key,
    required this.poli,
  });

  void _konfirmasiHapus(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Yakin ingin menghapus data ini?"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // tutup dialog
              Navigator.pop(context); // kembali ke list
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text("YA"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Tidak"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Poli"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 15),

            Text(
              "Nama Poli : ${poli.namaPoli}",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Ubah (kiri, hijau)
                SizedBox(
                  width: 65,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PoliUpdateForm(poli: poli),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      "Ubah",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 50),

                // Tombol Hapus (tengah, merah)
                SizedBox(
                  width: 65,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () => _konfirmasiHapus(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      "Hapus",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 50),

                // Tombol Cetak (kanan, kuning)
                SizedBox(
                  width: 65,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi Cetak
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      "Cetak",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}