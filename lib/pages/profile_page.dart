import 'package:flutter/material.dart';
import '../models/mahasiswa.dart';
import '../register/login_page.dart';

class ProfilePage extends StatelessWidget {
  final Mahasiswa mahasiswa;

  const ProfilePage({super.key, required this.mahasiswa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Informasi Akun:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Nama Lengkap'),
              subtitle: Text(mahasiswa.fullName),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Username'),
              subtitle: Text(mahasiswa.username),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              subtitle: Text(mahasiswa.email),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Tanggal Lahir'),
              subtitle: Text(mahasiswa.birthDate),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Nomor Telepon'),
              subtitle: Text(mahasiswa.phone),
            ),
            ListTile(
              leading: const Icon(Icons.wc),
              title: const Text('Jenis Kelamin'),
              subtitle: Text(mahasiswa.gender),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Alamat'),
              subtitle: Text(mahasiswa.address),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                label: const Text('LOGOUT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
