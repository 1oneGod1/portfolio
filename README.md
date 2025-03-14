# Aplikasi Portofolio Flutter  
Aplikasi portofolio berbasis Flutter yang menampilkan **Profil, Resume, Portofolio, dan Kontak** dengan **animasi halus** serta **integrasi EmailJS** untuk mengirim pesan langsung ke email.

---

## 📖 Daftar Isi
1. [Fitur](#fitur)  
2. [Tampilan Aplikasi](#tampilan-aplikasi)  

---

## **Fitur**
✅ **Desain Elegan** dengan Tema Gelap + Aksen Kuning  
✅ **Animasi Halus** untuk Menu & Perpindahan Layar  
✅ **Bagian Profil** dengan Informasi & Prestasi Pribadi  
✅ **Bagian Resume** dengan Riwayat Pekerjaan & Pendidikan  
✅ **Bagian Portofolio** dengan Proyek & Gambar  
✅ **Bagian Kontak** dengan **Integrasi API EmailJS**  
✅ **Penanganan Error & Tombol Refresh** jika pengiriman email gagal  

---

## **Tampilan Aplikasi**
### Halaman Utama
| Tampilan |  
|--------------|  
| ![image](https://github.com/user-attachments/assets/5347233f-a53f-4f38-99ee-ed41dce1ec52) ![image](https://github.com/user-attachments/assets/cdaf6fcf-a8f4-43d9-9d4d-33e12ce4a83d) |  

#### **Deskripsi Tampilan**
##### Tampilan Kiri (Layar utama - About Me)
- Menampilkan judul **"About Me"** di bagian atas dengan tombol menu hamburger di pojok kanan.
- Teks pengenalan **"Hello, I'm Andi Purba"** disorot dengan warna kuning.
- Deskripsi singkat **"I Am a Digital Educator and Creator"**.
- Foto pengguna dalam format setengah badan.
- Judul pekerjaan: **"My Job? Informatics Teacher"**, dengan aksen warna kuning.

##### Tampilan Kanan (Detail Profil - Expanded About Me)
- Memperlihatkan informasi lebih lengkap tentang pemilik portofolio.
- Foto lebih besar dengan pemotongan di bagian kepala.
- Informasi tambahan seperti **deskripsi pekerjaan, tanggal lahir, nomor telepon, email, lokasi, bahasa yang dikuasai, dan status freelance**.
- Setiap informasi dilengkapi ikon untuk memperjelas makna.
- Warna kuning digunakan untuk elemen penting seperti judul bagian dan ikon.

---

### Halaman Portfolio
| Tampilan |  
|--------------|  
| ![image](https://github.com/user-attachments/assets/a50d6bb9-16c5-45d9-8867-04ae44a1aded) ![image](https://github.com/user-attachments/assets/df60d484-d0f2-47fa-bffd-f2a634c95c8c) |  

#### **Deskripsi Tampilan**
##### Tampilan Kiri (Daftar Portofolio)
- Judul **"Portfolio"** dengan warna kuning di bagian atas.
- Menampilkan daftar proyek dalam format kartu (**card view**).
- Setiap proyek memiliki gambar, judul proyek (warna kuning), dan deskripsi.

**Contoh proyek:**
- **3D Modeling - Blender**: Proyek 3D modeling yang dibuat oleh siswa menggunakan Blender.
- **2D Game Development - Unity**: Proyek game 2D yang dikembangkan oleh siswa menggunakan Unity.

##### Tampilan Kanan (Portofolio Tambahan)
- Menampilkan proyek tambahan dalam daftar portofolio.

**Contoh proyek:**
- **Teaching Robotics - Leanbot**: Mengajarkan siswa cara memprogram robot sederhana menggunakan Leanbot.
- **Gold Medal - National Informatics Competition**: Penghargaan medali emas dalam kompetisi informatika tingkat nasional.
- Setiap proyek ditampilkan dalam kartu dengan efek kontras antara teks dan gambar.

---

### Halaman Resume
| Tampilan |  
|--------------|  
| ![image](https://github.com/user-attachments/assets/53d10056-a6a9-4ddb-9a01-0b45e89f3d82) ![image](https://github.com/user-attachments/assets/f459eef0-16e3-4182-a29a-a3c380f69fa1) |  

#### **Deskripsi Tampilan**
##### Tampilan Kiri (Pengalaman Kerja)
- Judul **"Resume"** di bagian atas dengan warna kuning.
- Bagian **"Experience"** (Pengalaman Kerja) berisi daftar pekerjaan dengan deskripsi.
- Setiap pengalaman kerja ditampilkan dalam kartu abu-abu dengan ikon profesi, nama pekerjaan, nama institusi, dan periode kerja.

**Contoh pekerjaan:**
- **3D Artist Educator** di Sekolah Palembang Harapan (Jul 2022 - Present).
- **Game Developer Educator** di Sekolah Palembang Harapan (Jan 2023 - Present).
- **Web Development Educator** di Sekolah Palembang Harapan (Jan 2023 - Present).

##### Tampilan Kanan (Pendidikan)
- Bagian **"Education"** (Pendidikan) menampilkan riwayat pendidikan dalam format kartu.
- Setiap kartu berisi **nama gelar, institusi pendidikan, periode belajar, serta deskripsi singkat**.

**Contoh pendidikan:**
- **Bachelor of Education** dari Universitas Harapan (2018 - 2022).
- **Bachelor of Informatics (Ongoing)** dari Universitas Ciputra (2024 - Present).
- Ikon 📜 digunakan untuk membedakan bagian ini dari pengalaman kerja.

---

### Halaman Contact Me
| Tampilan |  
|--------------|  
| ![image](https://github.com/user-attachments/assets/28a64526-2ee6-4db0-ae2b-3df5f1cf4527) |  

#### **Elemen UI yang Terlihat**
##### Header **"About Me"**
- Terletak di bagian atas dengan menu hamburger di pojok kanan atas.
- Menggunakan warna putih untuk tampilan yang bersih.

##### Judul **"Contact Me"**
- Berada di tengah atas dengan warna kuning untuk menonjolkan teks.

##### **Formulir Kontak**
- Tiga input field:
  - **Name** → Untuk memasukkan nama pengirim.
  - **Email** → Untuk memasukkan alamat email pengirim.
  - **Message** → Untuk menuliskan pesan yang ingin dikirim.
- Setiap field memiliki border putih dengan warna teks abu-abu.

##### **Tombol "Send Message"**
- Bentuk bulat dengan warna kuning.
- Teks tombol berwarna hitam agar kontras dan mudah dibaca.

---

### Tampilan Menu Button
| Tampilan |  
|--------------|  
| ![image](https://github.com/user-attachments/assets/2a8cc1cc-8e20-4a28-9fb2-9a3bb27b8c2a) |  

#### **Elemen UI yang Terlihat**
##### **Dropdown Menu Berwarna Kuning**
- Muncul ketika tombol menu ditekan.
- Berisi 4 opsi navigasi, masing-masing dengan ikon:
  - 📄 **My Profile** → Menampilkan informasi tentang pengguna.
  - 📑 **Resume** → Menampilkan pengalaman kerja & pendidikan.
  - 💼 **Portfolio** → Menampilkan proyek-proyek portofolio.
  - 📧 **Contact Me** → Menampilkan formulir kontak untuk mengirim pesan.
