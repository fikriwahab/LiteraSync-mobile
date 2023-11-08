# Tugas 7 PBP
## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

- Stateless Widget: Ini adalah widget yang tidak memiliki perubahan internal. Dalam konteks pengembangan Flutter, stateless widget digunakan ketika Anda memiliki elemen antarmuka yang tidak akan berubah sepanjang siklus hidup widget tersebut. Misalnya, teks statis atau ikon.
- Stateful Widget: Widget ini dapat memiliki perubahan internal dan dapat diperbarui selama siklus hidupnya. Dalam konteks pengembangan Flutter, stateful widget digunakan ketika Anda perlu memperbarui elemen antarmuka, misalnya, saat pengguna berinteraksi dengan aplikasi dan data harus diperbarui secara dinamis.
  
## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

### - MaterialApp: Ini adalah widget yang digunakan untuk menginisialisasi aplikasi Flutter dengan konfigurasi awal seperti judul, tema, dan layar awal.
### - Scaffold: Widget ini digunakan untuk mengatur struktur dasar aplikasi seperti AppBar dan body.
### - AppBar: Digunakan untuk menampilkan judul aplikasi.
### - SingleChildScrollView: Ini adalah widget yang memungkinkan kontennya dapat di-scroll jika melebihi layar.
### - Padding: Digunakan untuk memberikan jarak antara elemen-elemen dalam tata letak.
### - Column: Untuk mengatur elemen-elemen vertikal dalam kolom.
### - ElevatedButton: Digunakan untuk membuat tombol yang menonjol dengan latar belakang warna tertentu.
### - Icon: Digunakan untuk menampilkan ikon.
### - Text: Untuk menampilkan teks.
### - ScaffoldMessenger: Untuk menampilkan Snackbar ketika tombol ditekan.
### - SnackBar: Widget yang menampilkan pesan singkat ke pengguna.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
### Langkah 1: Membuat program Flutter baru dengan tema inventory
Pada main.dart, saya telah membuat program Flutter dengan tema "inventory" seperti tugas-tugas sebelumnya (dinamai dengan LiteraSync) dengan menggunakan MaterialApp:

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
          home: const MyHomePage(),
        );
      }
    }
### Langkah 2: Menggunakan Scaffold untuk struktur dasar
Pada menu.dart, saya menggunakan Scaffold untuk mengatur struktur dasar aplikasi di dalam MyHomePage:

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
                // Langkah selanjutnya...
              ),
            ),
          ),
        );
      }
    }

### Langkah 3: Menambahkan teks "LiteraSync"
Dalam Column, saya menambahkan elemen teks "LiteraSync" dengan:

    Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            'PBP Shop',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Langkah selanjutnya...
      ],
    ),

### Langkah 4: Membuat tombol "Lihat Item", "Tambah Item", dan "Logout"
Menggunakan ElevatedButton untuk membuat tiga tombol dengan ikon dan teks:

    Column(
      children: [
        // ...
        ElevatedButton.icon(
          onPressed: () {
            // Menampilkan SnackBar dengan pesan "Kamu telah menekan tombol Lihat Item"
          },
          icon: Icon(Icons.checklist),
          label: Text("Lihat Item"),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Warna latar belakang untuk "Lihat Item"
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Menampilkan SnackBar dengan pesan "Kamu telah menekan tombol Tambah Item"
          },
          icon: Icon(Icons.add_shopping_cart),
          label: Text("Tambah Item"),
          style: ElevatedButton.styleFrom(
            primary: Colors.green, // Warna latar belakang untuk "Tambah Item"
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Menampilkan SnackBar dengan pesan "Kamu telah menekan tombol Logout"
          },
          icon: Icon(Icons.logout),
          label: Text("Logout"),
          style: ElevatedButton.styleFrom(
            primary: Colors.red, // Warna latar belakang untuk "Logout"
          ),
        ),
      ],
    ),

### Langkah 5: Menampilkan SnackBar
Ketika tombol ditekan, saya menggunakan ScaffoldMessenger untuk menampilkan SnackBar dengan pesan yang sesuai.

Dengan langkah-langkah ini, seluruh checklist yang ada pada Tugas 7 PBP sudah berhasil diimplementasikan.
