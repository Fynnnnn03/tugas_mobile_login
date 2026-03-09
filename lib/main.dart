import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'models/mahasiswa.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register & Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: HomeScreen(
        mahasiswa: Mahasiswa(
          fullName: 'Indra Nur',
          username: 'indra',
          email: 'indra@gmail.com',
          birthDate: '01/01/2000',
          phone: '08123456789',
          gender: 'Laki-laki',
          address: 'Jl. jember',
          password: '12345678',
        ),
      ),
    );
  }
}