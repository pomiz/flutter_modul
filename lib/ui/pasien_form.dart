import 'package:flutter/material.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({super.key});

  @override
  State<PasienForm> createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();

  final _nomorRmCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tglLahirCtrl = TextEditingController();
  final _teleponCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();

  @override
  void dispose() {
    _nomorRmCtrl.dispose();
    _namaCtrl.dispose();
    _tglLahirCtrl.dispose();
    _teleponCtrl.dispose();
    _alamatCtrl.dispose();
    super.dispose();
  }

  Widget _field(
    String label,
    TextEditingController ctrl, {
    TextInputType? type,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: ctrl,
        keyboardType: type,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Pasien"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _field("Nomor RM", _nomorRmCtrl),
              _field("Nama", _namaCtrl),
              _field("Tanggal Lahir", _tglLahirCtrl),
              _field("Nomor Telepon", _teleponCtrl, type: TextInputType.phone),
              _field("Alamat", _alamatCtrl, maxLines: 3),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}