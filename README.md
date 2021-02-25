### Gambaran Sistem

Aplikasi ini secara umum akan berjenis pencatatan keuangan, dengan berbagai fitur pengelompokkan, yang digunakan untuk memisah jenis inputan yang ada.
Aplikasi perencanaan uang ini berbasis web dan dibuat dengan menggunakan framework Laravel (PHP) dengan database MySQL.

### Akun Dalam Aplikasi
- Hanya terdapat sebuah jenis akun, dimana akun ini adalah akun tiap penggunanya dan dapat melakukan konfigurasi jenis pengeluaran dan pemasukkan.
- Apabila ingin menggunakan aplikasi ini, maka calon pengguna harus mendaftarkan dirinya dahulu, dan kemudian akan mendapatkan akun pengguna berupa username email dan password.
- Anti Multilogin di mana satu akun yang telah login pada 1 PC/Laptop/Smartphone tertentu tidak bisa login di lain perangkat.

### Fitur Aplikasi
- Pada saat awal mendaftar dan login, pengguna akan dihadapkan pada halaman konfigurasi, dimana pada halaman ini pengguna bisa memasukkan master jenis pengeluaran dan jenis pemasukkan.
- Jenis pengeluaran dan pemasukkan yang dimasukkan dapat bertingkat
- Beberapa detail data yang dapat dimasukkan oleh pengguna terkait jenis-jenis pengeluaran dan pemasukannya adalah, nominal, uraian atau keterangan, dan foto. Tampilan pemasukkan dan pengeluaran dapat dilihat per bulan dan per tahun serta urut berdasarkan waktu transaksi.
- Sistem juga dapat mengeluarkan laporan berupa:
  - Grafik perbandingan antara pengeluaran dan pemasukkan pada periode yang diinginkan
  - Grafik perbandingan trend pengeluaran terbesar per bulan dan tahun
- Sistem juga mempunyai fitur bernama tabungan berencana, dimana apabila pengguna ingin mengumpulkan uang untuk membeli atau melakukan sesuatu, maka hal ini dapat diset sebagai target, dengan nominal yang dibutuhkan.
- Lalu pengguna dapat melakukan pengaturan reminder untuk menyisihkan ​income ​ke dalam tabungan berencana tersebut. Setiap saat pengguna juga dapat melihat sudah sampai berapa persen tabungan berencana yang berjalan saat ini.
- Export dalam bentuk Excel dan PDF
