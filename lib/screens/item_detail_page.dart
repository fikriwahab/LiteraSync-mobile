import 'package:flutter/material.dart';
import 'package:literasync/models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name), // Judul AppBar menggunakan nama item
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name: ${item.name}', style: TextStyle(fontSize: 20)),
            Text('Amount: ${item.amount}', style: TextStyle(fontSize: 20)),
            Text('Description: ${item.description}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), // Kembali ke halaman sebelumnya
              child: Text('Back to List'),
            ),
          ],
        ),
      ),
    );
  }
}
