import 'package:flutter/material.dart';
import 'beranda.dart';
import 'poli_page.dart';
import 'pegawai_page.dart';
import 'pasien_page.dart';
import 'login.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  void _pindah(BuildContext context, Widget page) {
    Navigator.pop(context); // tutup drawer
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Admin"),
            accountEmail: Text("admin@klinik.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Beranda"),
            onTap: () => _pindah(context, const Beranda()),
          ),
          ListTile(
            leading: const Icon(Icons.local_hospital),
            title: const Text("Poli"),
            onTap: () => _pindah(context, const PoliPage()),
          ),
          ListTile(
            leading: const Icon(Icons.badge),
            title: const Text("Pegawai"),
            onTap: () => _pindah(context, const PegawaiPage()),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Pasien"),
            onTap: () => _pindah(context, const PasienPage()),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}