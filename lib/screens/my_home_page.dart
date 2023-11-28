import 'package:flutter/material.dart';
import 'package:literasync/screens/add_item_page.dart'; // Impor AddItemPage
import 'package:literasync/screens/item_list_page.dart'; // Impor ItemListPage

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LiteraSync'),
      ),
      // Implementasi Drawer (Checklist 4)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            // Opsi Halaman Utama (Checklist 4b)
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Halaman Utama'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
              },
            ),
            // Opsi Tambah Item (Checklist 4c)
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Tambah Item'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemPage()));
              },
            ),
            // Opsi Lihat Produk (Bonus 2)
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Lihat Produk'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => ItemListPage()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'LiteraSync',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  // Tombol Lihat Item (Bonus 2)
                  ElevatedButton.icon(
                    onPressed: () {
                      // Menampilkan SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Kamu telah menekan tombol Lihat Item"),
                        ),
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ItemListPage()));
                    },
                    icon: Icon(Icons.checklist),
                    label: Text("Lihat Item"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                  ),
                  // Tombol Tambah Item (Checklist 2)
                  ElevatedButton.icon(
                    onPressed: () {
                      // Menampilkan SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Kamu telah menekan tombol Tambah Item"),
                        ),
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AddItemPage()));
                    },
                    icon: Icon(Icons.add_shopping_cart),
                    label: Text("Tambah Item"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                  ),
                  // Tombol Logout
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Kamu telah menekan tombol Logout"),
                        ),
                      );
                    },
                    icon: Icon(Icons.logout),
                    label: Text("Logout"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Warna latar belakang untuk "Logout"
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
