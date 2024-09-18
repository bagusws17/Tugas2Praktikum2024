# Tugas Pertemuan 2

Fork dan clone repository ini, lalu jalankan perintah 
```
flutter pub get
```
Buatlah tampilan form yang berisi nama, nim, dan tahun lahir pada file `ui/form_data.dart`, lalu buatlah tampilan hasil dari input data tersebut pada file `ui/tampil_data.dart`

JELASKAN PROSES PASSING DATA DARI FORM MENUJU TAMPILAN DENGAN FILE `README.md`

Buat tampilan semenarik mungkin untuk dilihat.


Nama : Bagus Wijoyoseno

NIM : H1D022030

Shift Baru: D

## Penjelasan
1. Pengumpulan Data di FormData
    Dalam class FormDataState, terdapat tiga TextEditingController: _namaController, _nimController, dan _tahunController. Controller ini bertugas untuk menangani input dari pengguna di setiap TextFormField:
    - _namaController: Menyimpan data nama.
    - _nimController: Menyimpan data NIM.
    - _tahunController: Menyimpan data tahun lahir.
    Ketiga controller ini terkait langsung dengan masing-masing TextFormField di dalam form untuk mengambil data dari pengguna.
    - Tombol ElevatedButton digunakan untuk menyimpan data. Saat tombol ditekan, data yang diinputkan divalidasi. Jika validasi sukses, data dari TextEditingController diambil dan dikirim ke layar berikutnya dengan Navigator.of(context).push untuk menampilkan widget TampilData.

2. Validasi Input
    Sebelum data diproses lebih lanjut, dilakukan validasi menggunakan _formKey.currentState!.validate(). Validasi ini memastikan bahwa data yang dimasukkan oleh pengguna sudah sesuai:
    - Jika validasi gagal, akan muncul pesan kesalahan di setiap TextFormField.
    - Jika validasi berhasil, proses berlanjut ke pengambilan dan pengiriman data ke halaman berikutnya (tampil_data).

3. Persiapan Data
    Setelah validasi berhasil, nilai dari setiap TextFormField diambil melalui controller:
    - Nama diambil menggunakan: String nama = _namaController.text;
    - NIM diambil menggunakan: String nim = _nimController.text;
    - Tahun lahir diambil dan dikonversi ke integer: int tahun = int.parse(_tahunController.text);
    Data tersebut sekarang siap untuk diteruskan ke halaman lain.

4. Passing Data melalui Constructor
    Untuk berpindah ke halaman TampilData dan mengirim data, digunakan Navigator.of(context).push():
    - Data yang telah diambil dari form dikirim sebagai argumen ke konstruktor TampilData.
    - Proses ini dilakukan dengan membuat instance dari TampilData dan meneruskan data melalui constructor, seperti berikut:

5. Penerimaan dan Penggunaan Data di TampilData
    - Pada halaman TampilData, class menerima data melalui constructor:
      <img src="https://github.com/bagusws17/Tugas2Praktikum2024/blob/main/construct.png" width=50% height=50%>
      
      Data yang dikirim dari FormData (nama, NIM, dan tahun) disimpan sebagai properti dalam class TampilData. Properti ini akan digunakan untuk menampilkan informasi.
    - Di dalam method build() dari TampilData, data yang diterima digunakan untuk ditampilkan kepada pengguna. Umur dihitung berdasarkan tahun lahir yang diterima, dan data tersebut ditampilkan melalui widget Text
## Screenshot
<img src="https://github.com/bagusws17/Tugas2Praktikum2024/blob/main/form.png" width=50% height=50%><img src="https://github.com/bagusws17/Tugas2Praktikum2024/blob/main/hasil.png" width=50% height=50%>
