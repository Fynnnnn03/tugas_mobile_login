import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> riwayat = [
      {'tanggal': '08 Mar 2026', 'total': 'Rp 45.000', 'status': 'Selesai'},
      {'tanggal': '05 Mar 2026', 'total': 'Rp 120.000', 'status': 'Selesai'},
      {'tanggal': '01 Mar 2026', 'total': 'Rp 30.000', 'status': 'Dibatalkan'},
      {'tanggal': '28 Feb 2026', 'total': 'Rp 75.000', 'status': 'Selesai'},
    ];

    return ListView.builder(
      itemCount: riwayat.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        Color statusColor = riwayat[index]['status'] == 'Selesai' 
            ? Colors.green 
            : Colors.red;

        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[50],
              child: const Icon(Icons.receipt_long, color: Colors.blueAccent),
            ),
            title: Text(
              "Pesanan ${riwayat[index]['tanggal']}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Status: ${riwayat[index]['status']}",
              style: TextStyle(color: statusColor, fontWeight: FontWeight.w500),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  riwayat[index]['total']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.chevron_right, size: 16, color: Colors.grey),
              ],
            ),
            onTap: () {
            },
          ),
        );
      },
    );
  }
}