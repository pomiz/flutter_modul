import 'package:flutter/material.dart';
import '../model/poli.dart';

class PoliDetail extends StatelessWidget {
  final Poli poli;

  const PoliDetail({
    super.key,
    required this.poli,
  });

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
                SizedBox(
                  width: 65,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi Ubah
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

                SizedBox(
                  width: 65,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi Hapus
                    },
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}