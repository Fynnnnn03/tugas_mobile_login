import 'package:flutter/material.dart';

class MenusPage extends StatelessWidget {
  const MenusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> daftarMenu = [
      {'nama': 'Ikan Bakar Puger', 'harga': 'Rp 25.000'},
      {'nama': 'Cumi Saus Tiram', 'harga': 'Rp 30.000'},
      {'nama': 'Udang Goreng Tepung', 'harga': 'Rp 28.000'},
      {'nama': 'Kepiting Asam Manis', 'harga': 'Rp 45.000'},
      {'nama': 'Es Jeruk Segar', 'harga': 'Rp 5.000'},
    ];
    return ListView.builder(
      itemCount: daftarMenu.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.blue[50],
                  child: const Icon(Icons.set_meal, size: 50, color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      daftarMenu[index]['nama']!,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      daftarMenu[index]['harga']!,
                      style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {                     
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("${daftarMenu[index]['nama']} ditambahkan")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text("Tambah ke Keranjang", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}