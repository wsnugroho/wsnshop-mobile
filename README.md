# wsnshop

##### Nama: Wisnu Nugroho
##### NPM: 2306275084
##### Kelas: PBP-D

<hr>

## Tugas 9

### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Membuat model untuk pengambilan atau pengiriman data JSON penting karena model memberikan struktur yang jelas dan memastikan data yang diterima atau dikirim memiliki atribut yang sesuai. Model membantu memvalidasi data, seperti memastikan tipe data benar dan atribut wajib tersedia. Selain itu, model mempermudah proses serialisasi dan deserialisasi, mengubah data dari format JSON menjadi objek aplikasi dan sebaliknya. Ini menjadikan pengelolaan data lebih terorganisir dan mudah di-debug.

Jika kita tidak membuat model terlebih dahulu, error mungkin saja terjadi, terutama dalam aplikasi yang kompleks atau saat data JSON tidak sesuai ekspektasi. Misalnya, atribut yang hilang atau tipe data yang tidak cocok dapat menyebabkan kegagalan saat memproses data. Meski tidak selalu wajib untuk data sederhana, penggunaan model sangat disarankan untuk mencegah kesalahan dan memastikan stabilitas sistem.

### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Library http yang diimplementasikan pada tugas ini berfungsi untuk melakukan permintaan HTTP dari aplikasi Flutter ke server. Dengan menggunakan library ini, aplikasi dapat mengirim data ke server (misalnya, menggunakan metode POST untuk mengirim data produk baru) dan mengambil data dari server (misalnya, menggunakan metode GET untuk mengambil daftar produk). Selain itu, library http juga membantu dalam mengelola respons dari server, seperti memeriksa status kode respons dan memproses data JSON yang diterima. Library ini juga dapat digunakan untuk mengelola autentikasi dan otorisasi dengan mengirimkan token atau cookie yang diperlukan dalam permintaan HTTP.

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

Fungsi dari CookieRequest adalah untuk mengelola sesi autentikasi dan otorisasi dalam aplikasi Flutter dengan menggunakan cookie. CookieRequest memungkinkan aplikasi untuk menyimpan dan mengirim cookie yang diperlukan untuk menjaga sesi pengguna tetap aktif, serta untuk mengirim permintaan HTTP yang memerlukan autentikasi. Instance CookieRequest perlu dibagikan ke semua komponen di aplikasi Flutter agar setiap komponen dapat mengakses dan menggunakan sesi autentikasi yang sama. Dengan cara ini, pengguna tidak perlu login ulang setiap kali berpindah halaman, dan semua permintaan HTTP yang memerlukan autentikasi dapat menggunakan cookie yang sama untuk menjaga konsistensi dan keamanan sesi pengguna.

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

1. **Input Data**

    Pengguna memasukkan data melalui elemen input pada aplikasi, seperti form atau text field.

2. **Validasi Data**

    Data yang dimasukkan pengguna divalidasi untuk memastikan bahwa data tersebut sesuai dengan aturan yang ditentukan (misalnya, tidak kosong, format benar).

3. **Mengirim Data ke Server**

    Setelah validasi, data dikirim ke server menggunakan metode HTTP POST.

4. **Menerima Respons dari Server**

    Server memproses data yang dikirim dan mengirimkan respons kembali ke aplikasi, biasanya dalam format JSON.

5. **Menampilkan Notifikasi**

    Aplikasi menampilkan notifikasi kepada pengguna berdasarkan respons dari server, seperti pesan sukses atau kesalahan.

6. **Mengambil Data dari Server**

    Aplikasi mengambil data dari server menggunakan metode HTTP GET untuk menampilkan data terbaru.

7. **Memproses Data yang Diterima**

    Data yang diterima dari server di-decode dari format JSON menjadi objek yang dapat digunakan dalam aplikasi.

8. **Menampilkan Data pada UI**

    Data yang telah diproses ditampilkan pada UI menggunakan widget atau komponen yang sesuai.

### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

1. Registrasi

    a. Input Data
    
    Pengguna memasukkan data akun seperti username, password, dan konfirmasi password melalui form di aplikasi Flutter.
    
    b. Validasi Data
    
    Aplikasi Flutter memvalidasi data input untuk memastikan semua field terisi dan password sesuai dengan konfirmasi password.
    
    c. Mengirim Data ke Server
    
    Data yang telah divalidasi dikirim ke server Django menggunakan HTTP POST.
    
    d. Proses di Server
    
    Django menerima data, memvalidasi ulang, dan membuat akun baru jika data valid. Django kemudian mengirimkan respons kembali ke aplikasi Flutter.
    
    e. Respons di Aplikasi
    
    Aplikasi Flutter menampilkan notifikasi sukses atau pesan kesalahan berdasarkan respons dari server.

2. Login:

    a. Input Data
    
    Pengguna memasukkan username dan password melalui form di aplikasi Flutter.
    
    b. Validasi Data
    
    Aplikasi Flutter memvalidasi data input untuk memastikan semua field terisi.
    
    c. Mengirim Data ke Server
    
    Data yang telah divalidasi dikirim ke server Django menggunakan HTTP POST.
    
    d. Proses di Server
    
    Django memeriksa kredensial yang dikirim. Jika valid, Django membuat sesi baru dan mengirimkan cookie sesi kembali ke aplikasi Flutter.
    
    e. Respons di Aplikasi
    
    Aplikasi Flutter menyimpan cookie sesi dan menampilkan notifikasi sukses atau pesan kesalahan berdasarkan respons dari server. Jika login berhasil, aplikasi menavigasi pengguna ke halaman utama.

3. Logout:

    a. Mengirim Permintaan ke Server
    
    Aplikasi Flutter mengirim permintaan logout ke server Django menggunakan HTTP POST.
    
    b. Proses di Server
    
    Django menghapus sesi pengguna dan mengirimkan respons kembali ke aplikasi Flutter.
    
    c. Respons di Aplikasi
    
    Aplikasi Flutter menghapus cookie sesi dan menampilkan notifikasi bahwa pengguna telah logout. Aplikasi kemudian menavigasi pengguna kembali ke halaman login.

4. Menampilkan Menu:

    a. Cek Status Login
    
    Aplikasi Flutter memeriksa apakah pengguna sudah login dengan memeriksa keberadaan cookie sesi.
    
    b. Navigasi ke Halaman Utama
    
    Jika pengguna sudah login, aplikasi menavigasi ke halaman utama dan menampilkan menu yang sesuai.
    
    c. Navigasi ke Halaman Login
    
    Jika pengguna belum login, aplikasi menavigasi ke halaman login untuk meminta pengguna melakukan autentikasi.

### Langkah Implementasi proyek

1. Implementasi fitur registrasi
    - Membuat endpoint /register pada django untuk registrasi user
    ```python
    @csrf_exempt
    def register(request):
        if request.method == 'POST':
            data = json.loads(request.body)
            ...
    ```
    - Membuat halaman registrasi pada flutter
    - Melakukan request ke endpoint /register unutk membuat user baru di halaman registrasi
    ```dart
    final response = await request.postJson(
        "http://localhost:8000/auth/register/",
        jsonEncode({
            "username": username,
            "password1": password1,
            "password2": password2,
        })
    );
    ```

2. Implementasi fitur login
- Membuat endpoint /login pada django untuk registrasi user
    ```python
    @csrf_exempt
    def login(request):
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        ...
    ```
    - Membuat halaman login pada flutter
    - Melakukan request ke endpoint /login unutk membuat user baru di halaman registrasi
    ```dart
    final response = await request
        .login("http://localhost:8000/auth/login/", {
            'username': username,
            'password': password,
        });
    ```

3. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
    - Membuat model pada flutter
    - Menggunakan Provider untuk share state CookieRequest ke seluruh widget flutter
    ```dart
    ...
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
        ...
    )
    ...
    ```

4. Membuat model kustom sesuai dengan proyek aplikasi Django.
    - Menggunakan website Quicktype untuk mendapakan models flutter dari response Django
    - Flutter models disimpan di lib/models/product.dart

5. Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
    - Mendapatkan & parsing semua data dari endpoint /json
    - Build ListItem untuk setiap data
    ```dart
    return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (_, index) => GestureDetector(
            onTap: () {
            Navigator.push(
                context,
                    MaterialPageRoute(
                        builder: (context) => ProductViewPage(
                            product: snapshot.data![index],
                        ),
                    ),
                );
            },
        ),
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                    "${snapshot.data![index].fields.name}",
                    style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    ),
                ),
                const SizedBox(height: 10),
                Text("${snapshot.data![index].fields.price}"),
                const SizedBox(height: 10),
                Text("${snapshot.data![index].fields.description}"),
                ],
            ),
        ),
    )
    ```

6. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
    - Menggunakan Gesture Detector untuk itemBuilder agar setiap card dapat ditekan dan diarahkan ke masing-masing detail setiap card
    - Mengarahkan ke detail page menggunakan Navigator.push
    ```dart
    itemBuilder: (_, index) => GestureDetector(
        onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => ProductViewPage(
                    product: snapshot.data![index],
                ),
                ),
            );
        },
    )
    ```

7. Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
    - Pada handler untuk mendapatkan produk lakukan filtering sebelum return datanya sebagai response
    ```python
    def show_json(request):
        data = Product.objects.filter(user=request.user)
        return HttpResponse(serializers.serialize("json", data), content_type="application/json")
    ```


## Tugas 8

### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Penggunaan `const` di Flutter berfungsi untuk membuat objek yang bersifat tetap dan tidak berubah sepanjang runtime. Dengan menandai objek sebagai `const`, Flutter dapat menghindari pembuatan ulang objek yang sama setiap kali widget melakukan *rerender*, karena objek yang tidak berubah bisa langsung digunakan kembali oleh Flutter.

Keuntungan menggunakan `const` pada Flutter yaitu:
- Menghemat memori dengan menghindari alokasi ulang objek.
- Meningkatkan performa aplikasi dengan mengurangi pekerjaan mesin virtual Dart.
- Memungkinkan optimasi waktu kompilasi, mempercepat waktu pemuatan aplikasi.

`const` sebaiknya digunakan pada widget atau nilai yang tidak berubah. Hindari penggunaan `const` pada objek yang membutuhkan perubahan dinamis. Jika sebuah objek dinamis ditandai dengan `const`, maka objek tersebut tidak akan dapat diperbarui selama runtime. Ini dapat menyebabkan bug, seperti tampilan yang tidak terupdate saat data berubah.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

`Column` dan `Row` adalah dua widget layout utama di Flutter yang digunakan untuk menyusun elemen secara vertikal dan horizontal. Perbedaannya terletak pada arah tata letak elemen yang mereka kelola.

- `Column`: Menyusun elemen secara vertikal, satu di bawah yang lainnya.
    ```dart
    Column(
        children: <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
        ],
    )
    ```

- `Row`: Menyusun elemen secara horizontal, satu di samping yang lainnya.
    ```dart
    Row(
        children: <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
        ],
    )
    ```

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada halaman form pada tugas ini, saya hanya menggunakan elemen input **TextField** untuk menerima input teks dari pengguna. Elemen ini digunakan untuk mendapatkan input text dari nama, harga, jumlah, dan deskipsi produk.

Elemen-elemen input lain pada Flutter yang tidak saya gunakan, yaitu:

- **Checkbox**: Untuk memilih satu atau lebih opsi dari beberapa pilihan. Menyimpan status boolean (checked/unchecked).

- **Radio**: Untuk memilih satu opsi dari beberapa pilihan yang tersedia. Hanya satu pilihan yang dapat dipilih dalam satu grup.

- **Switch**: Untuk mengubah status boolean antara dua kondisi (misalnya, on/off).

- **Slider**: Untuk memilih nilai numerik dalam rentang tertentu dengan cara menggeser slider.

- **DropdownButton**: Untuk memilih satu opsi dari daftar pilihan dalam bentuk dropdown.

- **DatePicker**: Untuk memilih tanggal dari kalender. Biasanya digunakan dalam bentuk dialog.

- **TimePicker**: Untuk memilih waktu tertentu dari dialog pemilih waktu.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Pada aplikasi Flutter yang saya buat, saya telah mengimplementasikan tema untuk menjaga tampilan semua widget dan aplikasi saling seragam. Saya menggunakan `ThemeData` untuk mendefinisikan skema warna dan gaya desain yang akan digunakan di seluruh aplikasi.

```dart
...
theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blue,
    ).copyWith(secondary: Colors.blue[400]),
    useMaterial3: true,
),
...
```

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Untuk menangani navigasi dengan banyak halaman, biasanya digunakan kombinasi antara `Drawer` dan `Navigator` untuk mempermudah navigasi antar halaman. `Drawer` berfungsi sebagai menu samping yang memberikan pengguna pilihan untuk berpindah antara berbagai halaman dalam aplikasi. Di dalam `Drawer`, terdapat beberapa item menu, masing-masing mewakili halaman yang berbeda. Ketika pengguna memilih salah satu item, `Navigator.push` digunakan untuk menavigasi ke halaman baru. Di sisi lain, `Navigator` mengelola transisi antara halaman dengan menggunakan mekanisme stack, memungkinkan pengguna untuk berpindah ke halaman lain dan kembali ke halaman sebelumnya dengan `Navigator.pop`.
```dart
...
return Drawer(
    child: ListView(
        children: [
            DrawerHeader(
                ...
            ),
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Halaman Utama'),
                // Bagian redirection ke MyHomePage
                onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                        )
                    );
                },
            ),
            ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text('Tambah Item'),
                // Bagian redirection ke ProductFormPage
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductFormPage(),
                        )
                    );
                },
            ),
        ],
    ),
);
...
```

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
