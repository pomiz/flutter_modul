import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienDetail extends StatelessWidget {
  final Pasien pasien;

  const PasienDetail({
    super.key,
    required this.pasien,
  });

  Widget _row(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        "$label : $value",
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pasien"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            _row("Nomor RM", pasien.nomorRm),
            _row("Nama", pasien.nama),
            _row("Tanggal Lahir", pasien.tanggalLahir),
            _row("Nomor Telepon", pasien.nomorTelepon),
            _row("Alamat", pasien.alamat),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 65,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text("Ubah", style: TextStyle(fontSize: 12)),
                  ),
                ),
                const SizedBox(width: 50),
                SizedBox(
                  width: 65,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text("Hapus", style: TextStyle(fontSize: 12)),
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