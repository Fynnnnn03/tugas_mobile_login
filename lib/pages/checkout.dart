import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> keranjang = [
      {'item': 'Ikan Bakar Puger', 'jumlah': '1x', 'subtotal': 'Rp 25.000'},
      {'item': 'Es Jeruk Segar', 'jumlah': '2x', 'subtotal': 'Rp 10.000'},
      {'item': 'Cumi Saus Tiram', 'jumlah': '1x', 'subtotal': 'Rp 30.000'},
    ];

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: keranjang.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: const Icon(Icons.shopping_bag, color: Colors.blueAccent),
                  title: Text(keranjang[index]['item']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("Jumlah: ${keranjang[index]['jumlah']}"),
                  trailing: Text(keranjang[index]['subtotal']!, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                ),
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border(top: BorderSide(color: Colors.grey[300]!)),
          ),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Pembayaran:", style: TextStyle(fontSize: 16)),
                  Text("Rp 65.000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent, padding: const EdgeInsets.symmetric(vertical: 15)),
                  child: const Text("BAYAR SEKARANG", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}