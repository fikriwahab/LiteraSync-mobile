import 'package:flutter/material.dart';
import 'package:literasync/models/item.dart'; // Pastikan ini sesuai dengan path file Anda

class ItemListPage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Produk 1', amount: 10, description: 'Deskripsi produk 1'),
    // Tambahkan lebih banyak item di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('Jumlah: ${item.amount}, Deskripsi: ${item.description}'),
          );
        },
      ),
    );
  }
}