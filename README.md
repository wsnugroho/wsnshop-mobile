# wsnshop_mobile

A Flutter project.

## Tugas 7

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

**Stateless widget** adalah widget yang tampilannya tidak berubah setelah dibangun. Artinya, widget ini hanya menampilkan UI berdasarkan data atau properti awal yang diterima, dan UI-nya tetap sama selama aplikasi berjalan. Contohnya termasuk widget seperti `Text`, `Icon`, atau `Image`, yang cocok untuk elemen-elemen statis tanpa interaksi atau perubahan. 

**Stateful Widget** adalah widget yang memiliki "state" atau keadaan yang bisa berubah selama aplikasi berjalan. Ini memungkinkan perubahan UI secara dinamis, misalnya ketika pengguna berinteraksi dengan tombol, form, atau slider yang memengaruhi tampilan. Contoh stateful widget adalah `Checkbox`, `TextField`, dan `Slider`. 

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
1. **MaterialApp**
   - Menyediakan struktur utama aplikasi dengan dukungan tema dan navigasi.
   - Digunakan untuk mengatur tema aplikasi *WSNShop*.

2. **Scaffold**
   - Menyediakan kerangka dasar halaman dengan elemen seperti *AppBar* dan *body*.
   - Digunakan sebagai kontainer utama di halaman aplikasi.

3. **AppBar**
   - Menampilkan bilah aplikasi di bagian atas dengan judul “WSNShop”.
   - Warna latar belakangnya mengikuti tema aplikasi.

4. **Padding**
   - Menambahkan ruang di sekitar widget tertentu untuk tata letak yang rapi.
   - Digunakan untuk menata jarak di *body* dan elemen-elemen lain di halaman.

5. **Column**
   - Menyusun widget secara vertikal.
   - Digunakan untuk menata konten, termasuk teks dan grid item, secara vertikal.

6. **Row**
   - Menyusun widget secara horizontal.
   - Digunakan untuk menampilkan tiga *InfoCard* (NPM, nama, dan kelas) secara sejajar.

7. **Text**
   - Menampilkan teks di layar.
   - Digunakan untuk berbagai informasi, seperti judul dan isi *InfoCard*.

8. **Card**
   - Menampilkan elemen dengan bayangan, biasanya untuk informasi dalam bentuk kartu.
   - Digunakan dalam *InfoCard* untuk menampilkan informasi NPM, nama, dan kelas.

9. **GridView.count**
   - Menampilkan item dalam bentuk grid dengan jumlah kolom tertentu.
   - Digunakan untuk membuat grid tiga kolom untuk menampilkan menu di *ItemCard*.

10. **Icon**
    - Menampilkan ikon grafis.
    - Digunakan untuk ikon di setiap *ItemCard* (misalnya, ikon *list*, *add*, *logout*).

11. **InkWell**
    - Menambahkan efek *ripple* dan aksi ketika widget ditekan.
    - Digunakan di setiap *ItemCard* agar dapat ditekan dan menampilkan *SnackBar*.

12. **SnackBar**
    - Menampilkan pesan sementara di bagian bawah layar untuk memberikan umpan balik interaktif.
    - Ditampilkan ketika pengguna menekan *ItemCard*.

13. **Center**
    - Menempatkan widget di tengah ruang yang tersedia.
    - Digunakan untuk menempatkan *Column* di tengah halaman.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Dalam Flutter, fungsi `setState()` digunakan untuk memberi tahu framework bahwa ada perubahan pada "state" dari sebuah **Stateful Widget**, sehingga widget tersebut perlu diperbarui atau dibangun ulang dengan nilai yang terbaru. Saat `setState()` dipanggil, Flutter akan menjalankan ulang metode `build()` dari widget tersebut untuk menampilkan tampilan yang sesuai dengan nilai state yang baru. Variabel yang bisa terdampak oleh `setState()` umumnya adalah variabel-variabel yang berada dalam kelas **State** dan berhubungan langsung dengan UI, seperti variabel penanda kondisi (`bool` untuk visibilitas atau pengaturan switch), teks, nilai slider, atau elemen data dinamis lainnya. Misalnya, variabel `isVisible` yang mengontrol visibilitas suatu elemen atau variabel `counter` menampilkan nilai penghitung yang dapat berubah melalui `setState()`, memengaruhi tampilan UI secara langsung. Namun, penting untuk menggunakan `setState()` dengan baik dan hanya digunakan untuk variabel yang benar-benar memengaruhi UI, karena terlalu sering menggunakannya dapat mempengaruhi performa aplikasi.

### Jelaskan perbedaan antara const dengan final.

Dalam Dart, terdapat dua keyword untuk mendeklarasikan nilai yang tidak dapat diubah, yaitu **const** dan **final**. Keduanya membuat variabel bersifat immutable, namun dengan perbedaan utama dalam waktu penentuan nilainya. **const** digunakan untuk nilai yang bersifat **compile-time constant**, artinya nilai harus sudah diketahui dan ditentukan saat kompilasi. Karena itu, `const` cocok untuk nilai tetap seperti angka atau string yang sudah pasti. Selain itu, variabel `const` bersifat **static secara default**, sehingga hanya ada satu instance di seluruh aplikasi. Di sisi lain, **final** dapat diinisialisasi saat runtime, yang berarti nilainya bisa dihasilkan dari operasi atau input yang dinamis. Setelah diberi nilai, `final` tidak dapat diubah, tetapi nilai awalnya tidak harus diketahui saat kompilasi. Singkatnya, `const` digunakan untuk nilai konstan yang sudah pasti sejak kompilasi, sementara `final` cocok untuk nilai tetap yang baru diketahui atau dihasilkan di runtime.


### Langkah Implementasi proyek

1. Membuat project flutter baru

    Menjalankan perintah berikut untuk membuat project baru dan navigasi ke dalam direktori project
    ```bash
    flutter create wsnshop_mobile
    cd wsnshop_mobile
    ```

2. Melakukan refactor pada kode template flutter
    
    main.dart
    ```dart
    import 'package:flutter/material.dart';
    import 'package:wsnshop_mobile/menu.dart';

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
                    colorScheme: ColorScheme.fromSwatch(
                    primarySwatch: Colors.blue,
                    ).copyWith(secondary: Colors.blue[400]),
                    useMaterial3: true,
                ),
                home: MyHomePage(),
            );
        }
    }

    ```

    menu.dart
    ```dart
    class MyHomePage extends StatelessWidget {
        MyHomePage({super.key});

        final String npm = '2306275084'; // NPM
        final String name = 'Wisnu Nugroho'; // Nama
        final String className = 'PBP D'; // Kelas

        final List<ItemHomepage> items = [
            ItemHomepage("Lihat Daftar Produk", Icons.list, Colors.red),
            ItemHomepage("Tambah Produk", Icons.add, Colors.green),
            ItemHomepage("Logout", Icons.logout, Colors.blue),
        ];

        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(
                    title: const Text(
                        'WSNShop',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                        ),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    InfoCard(title: 'NPM', content: npm),
                                    InfoCard(title: 'Name', content: name),
                                    InfoCard(title: 'Class', content: className),
                                ],
                            ),
                            const SizedBox(height: 16.0),
                            Center(
                                child: Column(
                                    // Menyusun teks dan grid item secara vertikal.

                                    children: [
                                    // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                                    const Padding(
                                        padding: EdgeInsets.only(top: 16.0),
                                        child: Text(
                                        'Welcome to WSNShop',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                        ),
                                        ),
                                    ),

                                    // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                                    GridView.count(
                                        primary: true,
                                        padding: const EdgeInsets.all(20),
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        crossAxisCount: 3,
                                        // Agar grid menyesuaikan tinggi kontennya.
                                        shrinkWrap: true,

                                        // Menampilkan ItemCard untuk setiap item dalam list items.
                                        children: items.map((ItemHomepage item) {
                                        return ItemCard(item);
                                        }).toList(),
                                    ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            );
        }
    }

    class InfoCard extends StatelessWidget {
    // Kartu informasi yang menampilkan title dan content.

    final String title; // Judul kartu.
    final String content; // Isi kartu.

    const InfoCard({super.key, required this.title, required this.content});

    @override
    Widget build(BuildContext context) {
        return Card(
            elevation: 2.0,
            child: Container(
                width: MediaQuery.of(context).size.width /
                    3.5,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                children: [
                    Text(
                        title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Text(content),
                ],
                ),
            ),
        );
    }
    }

    class ItemHomepage {
        final String name;
        final IconData icon;
        final Color color;

        ItemHomepage(this.name, this.icon, this.color);
    }

    class ItemCard extends StatelessWidget {
        final ItemHomepage item;
        const ItemCard(this.item, {super.key});

        @override
        Widget build(BuildContext context) {
            return Material(
                color: item.color,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                    onTap: () {
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(SnackBar(
                            content: Text("Kamu telah menekan tombol ${item.name}!")));
                    },
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Icon(
                                        item.icon,
                                        color: Colors.white,
                                        size: 30.0,
                                    ),
                                    const Padding(padding: EdgeInsets.all(3)),
                                    Text(
                                        item.name,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(color: Colors.white),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ),
            );
        }
    }
    ```

3. Membuat Card untuk menampilkan ketiga tombol
    ```dart
    class ItemCard extends StatelessWidget {
        final ItemHomepage item;
        const ItemCard(this.item, {super.key});

        @override
        Widget build(BuildContext context) {
            ...
        }
    }
    ```

4. Membuat 3 tombol agar dapat menampilkan warna berbeda
    
    Mengubah widget `ItemHomePage` agar dapat menerima properti name, icon, dan color
    ```dart
    class ItemHomepage {
        final String name;
        final IconData icon;
        final Color color;

        ItemHomepage(this.name, this.icon, this.color);
    }
    ```
    Membuat kumpulan `ItemHomePage` widget yang akan dirender beserta nama, icon, dan color yang akan ditampilkan.
    ```dart
    final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Produk", Icons.list, Colors.red),
        ItemHomepage("Tambah Produk", Icons.add, Colors.green),
        ItemHomepage("Logout", Icons.logout, Colors.blue),
    ];
    ```

5. Memunculkan widget SnackBar ketika tombol ditekan
    ```dart
    ...
    onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
    ...
    ```
