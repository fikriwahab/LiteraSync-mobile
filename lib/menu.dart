import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
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
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Kamu telah menekan tombol Lihat Item"),
                        ),
                      );
                    },
                    icon: Icon(Icons.checklist),
                    label: Text("Lihat Item"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Warna latar belakang untuk "Lihat Item"
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Kamu telah menekan tombol Tambah Item"),
                        ),
                      );
                    },
                    icon: Icon(Icons.add_shopping_cart),
                    label: Text("Tambah Item"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Warna latar belakang untuk "Tambah Item"
                    ),
                  ),
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
