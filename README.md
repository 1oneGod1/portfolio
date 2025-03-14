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
##### **Tampilan Kiri (Layar utama - About Me)**
- Menampilkan judul **"About Me"** dengan tombol menu hamburger di pojok kanan.
- Teks pengenalan **"Hello, I'm Andi Purba"** disorot dengan warna kuning.
- Deskripsi singkat **"I Am a Digital Educator and Creator"**.
- Foto pengguna dalam format setengah badan.
- Judul pekerjaan: **"My Job? Informatics Teacher"**.

##### **Tampilan Kanan (Detail Profil - Expanded About Me)**
- Memperlihatkan informasi lebih lengkap tentang pemilik portofolio.
- Foto lebih besar dengan pemotongan di bagian kepala.
- Informasi tambahan seperti **deskripsi pekerjaan, tanggal lahir, nomor telepon, email, lokasi, bahasa yang dikuasai, dan status freelance**.
- Warna kuning digunakan untuk elemen penting seperti judul bagian dan ikon.

---

### **Halaman Portofolio**
| Tampilan |  
|--------------|  
| ![image](https://github.com/user-attachments/assets/a50d6bb9-16c5-45d9-8867-04ae44a1aded) ![image](https://github.com/user-attachments/assets/df60d484-d0f2-47fa-bffd-f2a634c95c8c) |  

#### **Deskripsi Tampilan**
##### **Tampilan Kiri (Daftar Portofolio)**
- Judul **"Portfolio"** dengan warna kuning.
- Menampilkan daftar proyek dalam format kartu (**card view**).
- Setiap proyek memiliki gambar, judul proyek (warna kuning), dan deskripsi.

##### **Tampilan Kanan (Portofolio Tambahan)**
- Menampilkan proyek tambahan dalam daftar portofolio.

---

### **Halaman Resume**
| Tampilan |  
|--------------|  
| ![image](https://github.com/user-attachments/assets/53d10056-a6a9-4ddb-9a01-0b45e89f3d82) ![image](https://github.com/user-attachments/assets/f459eef0-16e3-4182-a29a-a3c380f69fa1) |  

#### **Deskripsi Tampilan**
##### **Tampilan Kiri (Pengalaman Kerja)**
- Judul **"Resume"** dengan warna kuning.
- Bagian **"Experience"** (Pengalaman Kerja) berisi daftar pekerjaan dengan deskripsi.

##### **Tampilan Kanan (Pendidikan)**
- Bagian **"Education"** (Pendidikan) menampilkan riwayat pendidikan dalam format kartu.

---

### **Halaman Contact Me**
| Tampilan |  
|--------------|  
| ![image](https://github.com/user-attachments/assets/28a64526-2ee6-4db0-ae2b-3df5f1cf4527) |  

#### **Elemen UI yang Terlihat**
##### **Judul "Contact Me"**
- Berada di tengah atas dengan warna kuning.

##### **Formulir Kontak**
- Tiga input field:
  - **Name** → Untuk memasukkan nama pengirim.
  - **Email** → Untuk memasukkan alamat email pengirim.
  - **Message** → Untuk menuliskan pesan yang ingin dikirim.

##### **Tombol "Send Message"**
- Bentuk bulat dengan warna kuning.

---

### **Tampilan Menu Button**
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

---

# 📌 Penjelasan Kode

## 1️⃣ Menu Navigasi Animasi
**File:** `home_screen.dart`

### 📌 Fitur:
✔ Menu navigasi dengan animasi smooth saat dibuka & ditutup.  
✔ Memungkinkan navigasi ke **Profile, Resume, Portfolio,** dan **Contact**.

### 🔹 Kode:
```dart
class _HomeScreenState extends State<HomeScreen> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: isMenuOpen ? 200 : 0,
              child: Container(
                color: Colors.yellow,
                child: Column(
                  children: [
                    menuItem(Icons.person, "My Profile", ProfileScreen()),
                    menuItem(Icons.description, "Resume", ResumeScreen()),
                    menuItem(Icons.work, "Portfolio", PortfolioScreen()),
                    menuItem(Icons.email, "Contact Me", ContactScreen()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
```

---

## 2️⃣ Halaman Profil
**File:** `profile_screen.dart`

### 📌 Fitur:
✔ Menampilkan **nama, deskripsi pekerjaan, dan kontak** pengguna.  
✔ Tampilan responsif dengan warna **hitam & kuning**.

### 🔹 Kode:
```dart
Column(
  children: [
    Text("My Job?", style: TextStyle(color: Colors.yellow, fontSize: 18)),
    Text("Informatics Teacher", style: TextStyle(color: Colors.white, fontSize: 22)),
    Text(
      "Hello! I am an Informatics teacher for middle and high school students...",
      style: TextStyle(color: Colors.grey, fontSize: 14),
    ),
  ],
)
```

---

## 3️⃣ Halaman Resume (Pengalaman & Pendidikan)
**File:** `resume_screen.dart`

### 📌 Fitur:
✔ Menampilkan daftar **pengalaman kerja & riwayat pendidikan** dalam kartu responsif.  
✔ Ikon **profesi & institusi pendidikan** ditampilkan bersama teks.

### 🔹 Kode:
```dart
Widget buildExperienceCard(Map<String, String> data) {
  return Card(
    color: Colors.black,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(data["icon"]!, style: TextStyle(fontSize: 24)),
          Column(
            children: [
              Text(data["title"]!, style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(data["institution"]!, style: TextStyle(color: Colors.yellow, fontSize: 14)),
            ],
          ),
        ],
      ),
    ),
  );
}
```

---

## 4️⃣ Halaman Portofolio
**File:** `portfolio_screen.dart`

### 📌 Fitur:
✔ Menampilkan daftar **proyek portofolio** dalam **grid card** dengan gambar & deskripsi.

### 🔹 Kode:
```dart
ListView.builder(
  itemCount: portfolioItems.length,
  itemBuilder: (context, index) {
    final item = portfolioItems[index];
    return Card(
      child: Column(
        children: [
          Image.asset(item["image"]!, fit: BoxFit.cover, height: 200),
          Text(item["title"]!, style: TextStyle(color: Colors.yellow, fontSize: 18)),
          Text(item["description"]!, style: TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  },
)
```

---

## 5️⃣ Halaman Kontak (EmailJS API)
**File:** `contact_screen.dart`

### 📌 Fitur:
✔ Formulir kontak dengan **nama, email, dan pesan**.  
✔ Menggunakan **EmailJS API** untuk mengirim pesan langsung ke email pengguna.

### 🔹 Kode:
```dart
Future<void> sendEmail() async {
  final response = await http.post(
    Uri.parse('https://api.emailjs.com/api/v1.0/email/send'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'service_id': 'service_0t30daf',
      'template_id': 'template_9smdhzi',
      'user_id': 'YJQoP43cSX51foN43',
      'template_params': {
        'name': _nameController.text,
        'email': _emailController.text,
        'message': _messageController.text,
      },
    }),
  );

  if (response.statusCode == 200) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Message sent successfully!")),
    );
  }
}
```

---

📌 **Catatan:**
- Pastikan untuk mengganti `service_id`, `template_id`, dan `user_id` sesuai dengan kredensial EmailJS Anda.
- Sesuaikan desain UI agar sesuai dengan branding atau preferensi pengguna.



