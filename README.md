#  Aplikasi Portofolio Flutter  
 Aplikasi portofolio berbasis Flutter yang menampilkan **Profil, Resume, Portofolio, dan Kontak** dengan **animasi halus** serta **integrasi EmailJS** untuk mengirim pesan langsung ke email.

---

## 📖 **Daftar Isi**
1. [ Fitur](#fitur)  
2. [ Tampilan Aplikasi](#tampilan-aplikasi)  
3. [ Instalasi & Pengaturan](#instalasi--pengaturan)  
4. [ Struktur Proyek](#struktur-proyek)  
5. [ Penjelasan File](#penjelasan-file)  
6. [ Mengirim Email dengan EmailJS](#mengirim-email-dengan-emailjs)  
7. [ Penanganan Error & Refresh](#penanganan-error--refresh)  
8. [ Lisensi](#lisensi)  

---

##  **Fitur**
✅ **Desain Elegan** dengan Tema Gelap + Aksen Kuning  
✅ **Animasi Halus** untuk Menu & Perpindahan Layar  
✅ **Bagian Profil** dengan Informasi & Prestasi Pribadi  
✅ **Bagian Resume** dengan Riwayat Pekerjaan & Pendidikan  
✅ **Bagian Portofolio** dengan Proyek & Gambar  
✅ **Bagian Kontak** dengan **Integrasi API EmailJS**  
✅ **Penanganan Error & Tombol Refresh** jika pengiriman email gagal  

---

##  **Tampilan Aplikasi**
| Halaman Utama | Portofolio | Kontak |
|--------------|-----------|--------|
| ![Home](![image](https://github.com/user-attachments/assets/5347233f-a53f-4f38-99ee-ed41dce1ec52)
)![image](https://github.com/user-attachments/assets/cdaf6fcf-a8f4-43d9-9d4d-33e12ce4a83d)
 | ![Portfolio](screenshots/portfolio.png) | ![Contact](screenshots/contact.png) |

---

##  **Instalasi & Pengaturan**

### **1️ Clone repository**
git clone https://github.com/username/repository.git
cd repository

### **2 Install dependency**
flutter pub get

### **3 Jalankan Aplikasi**
flutter run

##  **Struktur Project**

lib/
│── assets/                      # Folder penyimpanan gambar
│   ├── P1.jpg                   # Gambar portofolio 1
│   ├── P2.jpg                   # Gambar portofolio 2
│   ├── profile.png              # Foto profil
│── screens/                      # Halaman utama aplikasi
│   ├── home_screen.dart         # Halaman utama dengan menu
│   ├── profile_screen.dart      # Halaman "Tentang Saya"
│   ├── resume_screen.dart       # Halaman Resume
│   ├── portfolio_screen.dart    # Halaman Portofolio
│   ├── contact_screen.dart      # Halaman Kontak (EmailJS)
│── widgets/                      # Komponen yang dapat digunakan ulang
│   ├── menu_button.dart         # Tombol menu animasi
│── main.dart                     # Titik masuk utama aplikasi

