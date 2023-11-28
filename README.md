# Tugas 8 PBP
## 1. Perbedaan antara Navigator.push() dan Navigator.pushReplacement()
- Navigator.push() digunakan untuk menavigasi ke halaman baru di atas stack navigasi. Halaman sebelumnya tetap ada di stack, yang berarti jika pengguna menekan tombol kembali, mereka akan kembali ke halaman sebelumnya. Contoh Penggunaan: Navigasi dari daftar produk ke detail produk. Pengguna dapat kembali ke daftar produk dengan menekan tombol kembali.
- Navigator.pushReplacement() digunakan untuk mengganti halaman saat ini dengan halaman baru di stack navigasi. Halaman sebelumnya dihapus dari stack, sehingga ketika pengguna menekan tombol kembali, mereka tidak akan kembali ke halaman sebelumnya. Contoh Penggunaan: Navigasi dari layar login ke beranda setelah login berhasil. Pengguna tidak perlu kembali ke layar login jika menekan tombol kembali.

## 2. Layout Widget pada Flutter
- Column dan Row: Untuk layout linear vertikal dan horizontal. Digunakan untuk menata widget dalam satu baris atau kolom.
- Stack: Untuk layout widget secara bertumpuk. Berguna untuk menempatkan widget di atas widget lain, seperti teks di atas gambar.
- Container: Widget serbaguna untuk styling, padding, margin, dan dimensi. Cocok untuk pembungkus widget lain dengan styling tertentu.
- GridView: Untuk membuat layout grid. Berguna untuk menampilkan item dalam bentuk grid seperti galeri foto.
- ListView: Untuk membuat daftar scrollable. Digunakan untuk menampilkan daftar item yang dapat di-scroll.
- Flex dan Expanded: Untuk layout yang fleksibel dan menyesuaikan ukuran widget anak berdasarkan ruang yang tersedia.

## 3. Elemen Input pada Form
Elemen input yang digunakan dalam tugas 8 ini meliputi:

- TextFormField: Digunakan untuk mengumpulkan input teks dari pengguna, seperti nama item, deskripsi. Dipilih karena menyediakan validasi dan pengelolaan state input teks yang mudah.
- Numeric Input: Sebuah TextFormField dengan keyboardType: TextInputType.number untuk jumlah item. Digunakan untuk memastikan input adalah angka.

## 4. Penerapan Clean Architecture pada Aplikasi Flutter
Clean Architecture melibatkan pemisahan kode menjadi lapisan dengan tanggung jawab tertentu:
- Presentation Layer: Berisi UI dan logic yang mengontrol apa yang ditampilkan di layar, misalnya widget Flutter dan state management.
- Domain Layer: Berisi bisnis logic aplikasi. Termasuk entitas (model data) dan use cases atau business rules.
- Data Layer: Berhubungan dengan penyimpanan data, seperti panggilan API, database lokal. Termasuk model data dari API atau database dan logic untuk mengambil/menyimpan data.
Dalam Flutter, ini dapat diterapkan dengan memisahkan kode ke dalam paket atau folder terpisah seperti models, views, screens, controllers/viewmodels, dan services/repositories.

## 5. Implementasi Checklist Step-by-step
### 1. Desain UI
Pertama, saya mendesain tampilan dasar menggunakan widget Scaffold, AppBar, dan Column. Di MyHomePage, saya menampilkan beberapa ElevatedButton untuk navigasi.

    class MyHomePage extends StatelessWidget {
      // Constructor dan build method seperti biasa
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Shopping List'),
          ),
          body: Column(
            children: [
              ElevatedButton.icon(
                // ... Properties untuk button Lihat Item
              ),
              ElevatedButton.icon(
                // ... Properties untuk button Tambah Item
              ),
              // ... Tombol lain jika ada
            ],
          ),
        );
      }
    }

### 2. Navigasi
Di sini saya mengimplementasikan Navigator.push() untuk navigasi antarhalaman. Ketika tombol ditekan, pengguna akan dibawa ke halaman baru.

    ElevatedButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemPage()));
      },
      // ... Properties untuk button
    ),
### 3. Form dan Validasi
Di AddItemPage, saya membuat Form dengan beberapa TextFormField dan logic validasi untuk mengumpulkan input dari pengguna.

    class AddItemPage extends StatefulWidget {
      // ... Constructor dan State
    }
    
    class _AddItemPageState extends State<AddItemPage> {
      final _formKey = GlobalKey<FormState>();
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  // ... Validator untuk 'name'
                ),
                TextFormField(
                  // ... Validator untuk 'amount'
                ),
                // ... TextFormField lain jika ada
              ],
            ),
          ),
        );
      }
    }

### 4. Menyimpan Data
Ketika pengguna menekan tombol 'Save', data dari form disimpan ke variabel lokal.

    ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          // Simpan data ke variabel atau kirim ke halaman lain
        }
      },
      child: Text('Save'),
    ),
### 5. Menampilkan Data
Di ItemListPage, saya menampilkan daftar item yang disimpan dengan ListView.

    class ItemListPage extends StatelessWidget {
      // ... Constructor dan variabel jika ada
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                // ... Properties untuk menampilkan item
              );
            },
          ),
        );
      }
    }

### 6. Drawer
Menambahkan Drawer di MyHomePage untuk memudahkan navigasi.

    // Di dalam Scaffold dari MyHomePage
    drawer: Drawer(
      child: ListView(
        children: [
          // ... DrawerHeader dan ListTile untuk navigasi
        ],
      ),
    ),
### 7. Snackbar
menambahkan Snackbar untuk memberikan umpan balik kepada pengguna setelah aksi tertentu, seperti menekan tombol.

    ElevatedButton.icon(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Aksi dilakukan")),
        );
        // ... Aksi lain jika ada
      },
      // ... Properties untuk button
    ),

Melalui langkah-langkah ini, saya mendevelop aplikasi yang memungkinkan pengguna untuk memasukkan data melalui form, melihat daftar item, serta melakukan navigasi menggunakan drawer dan menerima umpan balik melalui snackbar. 

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
