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

📂 Kode yang Digunakan
Untuk membangun tampilan seperti ini di Flutter, kita akan menggunakan beberapa komponen utama:

1️⃣ Struktur Layout - Column & Container
Flutter menggunakan Column untuk menampilkan elemen secara vertikal. Container digunakan untuk memberikan padding dan background warna.

📌 Contoh Kode Flutter untuk Struktur Dasar
dart
Copy code
Column(
  children: [
    // Header - About Me
    Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("About Me", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Icon(Icons.menu), // Menu Hamburger
        ],
      ),
    ),
    
    // Konten utama dengan background hitam
    Expanded(
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hello, I'm Andi Purba
            Text("Hello, I'm", style: TextStyle(color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text("Andi Purba", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("I Am a Digital Educator and Creator", style: TextStyle(color: Colors.grey, fontSize: 16)),

            // Foto Profil
            SizedBox(height: 20),
            Center(
              child: Image.asset("assets/profile.png", height: 200),
            ),

            // My Job
            SizedBox(height: 20),
            Text("My Job?", style: TextStyle(color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold)),
            Text("Informatics Teacher", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ),
  ],
),
2️⃣ Detail Profil - Informasi Lengkap
Pada tampilan kedua, kita menampilkan lebih banyak informasi, seperti email, tanggal lahir, lokasi, bahasa, dan status freelance.

📌 Contoh Kode Flutter untuk Detail Profil
dart
Copy code
Container(
  color: Colors.black,
  padding: EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // My Job
      Text("My Job?", style: TextStyle(color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold)),
      Text("Informatics Teacher", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
      SizedBox(height: 8),

      // Deskripsi
      Text(
        "Hello! I am an Informatics teacher for middle and high school students, passionate about guiding young minds in the world of technology. My teaching focus is on foundational web development...",
        style: TextStyle(color: Colors.grey, fontSize: 14),
      ),
      SizedBox(height: 16),

      // Informasi Pribadi dengan Ikon
      Row(children: [
        Icon(Icons.cake, color: Colors.yellow),
        SizedBox(width: 8),
        Text("Birthday: June 22, 1999", style: TextStyle(color: Colors.white)),
      ]),
      SizedBox(height: 8),

      Row(children: [
        Icon(Icons.phone, color: Colors.yellow),
        SizedBox(width: 8),
        Text("Phone: +62 822-6063-8053", style: TextStyle(color: Colors.white)),
      ]),
      SizedBox(height: 8),

      Row(children: [
        Icon(Icons.email, color: Colors.yellow),
        SizedBox(width: 8),
        Text("Email: pandapotanandi@gmail.com", style: TextStyle(color: Colors.white)),
      ]),
      SizedBox(height: 8),

      Row(children: [
        Icon(Icons.location_on, color: Colors.yellow),
        SizedBox(width: 8),
        Text("From: Palembang", style: TextStyle(color: Colors.white)),
      ]),
      SizedBox(height: 8),

      Row(children: [
        Icon(Icons.language, color: Colors.yellow),
        SizedBox(width: 8),
        Text("Language: English, Indonesian", style: TextStyle(color: Colors.white)),
      ]),
      SizedBox(height: 8),

      Row(children: [
        Icon(Icons.work, color: Colors.yellow),
        SizedBox(width: 8),
        Text("Freelance: Available", style: TextStyle(color: Colors.white)),
      ]),
    ],
  ),
),
📌 Penjelasan Kode
✔ Menggunakan Column → Untuk menyusun elemen secara vertikal.
✔ Menggunakan Container → Untuk mengatur warna background & padding.
✔ Menggunakan Text → Untuk menampilkan teks seperti nama, deskripsi, dan informasi kontak.
✔ Menggunakan Row → Untuk menyusun ikon & teks secara horizontal.
✔ Menggunakan Icon → Untuk memberikan ikon di samping informasi penting.
✔ Menggunakan Image.asset("profile.png") → Untuk menampilkan gambar profil dari folder assets/.



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

📂 Kode yang Digunakan
Untuk menampilkan portofolio dalam format grid atau list card, kita menggunakan ListView.builder dengan Card dan Container.

1️⃣ Struktur Dasar Halaman Portofolio
Flutter menggunakan ListView untuk menampilkan daftar proyek portofolio dengan desain kartu responsif.

📌 Contoh Kode Flutter untuk Struktur Halaman Portofolio
dart
Copy code
class PortfolioScreen extends StatelessWidget {
  final List<Map<String, String>> portfolioItems = [
    {
      "title": "3D Modeling - Blender",
      "description": "A 3D modeling project created by my students using Blender.",
      "image": "assets/P1.jpg",
    },
    {
      "title": "2D Game Development - Unity",
      "description": "A 2D game project developed by my students using Unity.",
      "image": "assets/P2.jpg",
    },
    {
      "title": "Teaching Robotics - Leanbot",
      "description": "I taught students how to program simple robots using Leanbot to move forward, backward, and turn.",
      "image": "assets/P4.jpg",
    },
    {
      "title": "Gold Medal - National Informatics Competition",
      "description": "I won a gold medal in a national informatics competition organized by the Indonesian Science Olympiad Institution.",
      "image": "assets/P5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Portfolio", style: TextStyle(color: Colors.yellow)),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: portfolioItems.length,
        itemBuilder: (context, index) {
          final item = portfolioItems[index];
          return Card(
            color: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(item["image"]!, fit: BoxFit.cover, width: double.infinity, height: 200),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["title"]!,
                        style: TextStyle(color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        item["description"]!,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
📌 Penjelasan Kode
✔ Menggunakan Scaffold & AppBar → Untuk menampilkan judul "Portfolio" di bagian atas dengan warna kuning.
✔ Menggunakan ListView.builder → Untuk membuat daftar portofolio secara dinamis dari list portfolioItems.
✔ Menggunakan Card → Untuk menampilkan setiap proyek dalam bentuk kartu responsif.
✔ Menggunakan ClipRRect → Untuk memberikan efek border radius pada gambar proyek.
✔ Menggunakan Padding → Untuk memberikan ruang antara teks & gambar agar tampilan lebih rapi.
✔ Menggunakan Image.asset() → Untuk menampilkan gambar dari folder assets/.



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

📂 Kode yang Digunakan
Untuk membuat tampilan ini, kita menggunakan ListView.builder, Card, dan Row untuk menampilkan ikon & teks secara horizontal.

1️⃣ Struktur Dasar Halaman Resume
Flutter menggunakan ListView untuk menampilkan daftar pengalaman kerja dan pendidikan dalam bentuk kartu responsif.

📌 Contoh Kode Flutter untuk Halaman Resume
dart
Copy code
class ResumeScreen extends StatelessWidget {
  final List<Map<String, String>> experiences = [
    {
      "title": "3D Artist Educator",
      "institution": "Sekolah Palembang Harapan",
      "period": "Jul 2022 - Present",
      "description": "Taught foundational 3D modeling skills using Blender, focusing on object creation, texturing, and rendering techniques.",
      "icon": "🎨",
    },
    {
      "title": "Game Developer Educator",
      "institution": "Sekolah Palembang Harapan",
      "period": "Jan 2023 - Present",
      "description": "Responsible for teaching students the fundamentals of game development using Unity and C#, covering topics such as game mechanics and asset integration.",
      "icon": "🎮",
    },
    {
      "title": "Web Development Educator",
      "institution": "Sekolah Palembang Harapan",
      "period": "Jan 2023 - Present",
      "description": "Taught foundational web development skills, focusing on HTML and CSS to create responsive and accessible websites.",
      "icon": "💻",
    },
  ];

  final List<Map<String, String>> education = [
    {
      "title": "Bachelor of Education",
      "institution": "Universitas Harapan",
      "period": "2018 - 2022",
      "description": "Completed a dual-degree program, specializing in physics education with an emphasis on student-centered learning.",
      "icon": "📜",
    },
    {
      "title": "Bachelor of Informatics (Ongoing)",
      "institution": "Universitas Ciputra",
      "period": "2024 - Present",
      "description": "Currently pursuing a degree in Informatics, focusing on software development, data analysis, and emerging technologies.",
      "icon": "📚",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Resume", style: TextStyle(color: Colors.yellow)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Experience Section
            Text("Experience", style: TextStyle(color: Colors.yellow, fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Column(
              children: experiences.map((exp) => buildExperienceCard(exp)).toList(),
            ),
            SizedBox(height: 20),

            // Education Section
            Text("Education", style: TextStyle(color: Colors.yellow, fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Column(
              children: education.map((edu) => buildExperienceCard(edu)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExperienceCard(Map<String, String> data) {
    return Card(
      color: Colors.black,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(data["icon"]!, style: TextStyle(fontSize: 24)),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data["title"]!, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(data["institution"]!, style: TextStyle(color: Colors.yellow, fontSize: 14, fontWeight: FontWeight.bold)),
                    Text(data["period"]!, style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(data["description"]!, style: TextStyle(color: Colors.grey, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
📌 Penjelasan Kode
✔ Menggunakan Scaffold & AppBar → Untuk menampilkan judul "Resume" di bagian atas dengan warna kuning.
✔ Menggunakan SingleChildScrollView → Agar halaman bisa di-scroll saat daftar pengalaman kerja dan pendidikan bertambah.
✔ Menggunakan Card → Untuk menampilkan setiap pengalaman kerja & pendidikan dalam bentuk kartu responsif.
✔ Menggunakan Row → Untuk menampilkan ikon dan teks dalam satu baris.
✔ Menggunakan Text(data["icon"]!) → Untuk menampilkan ikon emoji sebagai ilustrasi pekerjaan atau pendidikan.
✔ Menggunakan buildExperienceCard() → Fungsi reusable untuk menampilkan kartu pengalaman kerja & pendidikan tanpa duplikasi kode.
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

📂 Kode yang Digunakan
Halaman ini dibuat menggunakan Form, TextFormField, dan Button. Pengiriman email dilakukan melalui EmailJS API.

1️⃣ Struktur Dasar Halaman Contact
Flutter menggunakan TextFormField untuk input data dan ElevatedButton untuk tombol pengiriman.

📌 Contoh Kode Flutter untuk Halaman Kontak
dart
Copy code
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  bool isLoading = false;

  Future<void> sendEmail() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => isLoading = true);

    const serviceId = 'service_0t30daf'; 
    const templateId = 'template_9smdhzi'; 
    const userId = 'YJQoP43cSX51foN43'; 

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'name': _nameController.text,
          'email': _emailController.text,
          'message': _messageController.text,
        },
      }),
    );

    setState(() => isLoading = false);

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Message sent successfully!")),
      );
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to send message. Try again!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Contact Me", style: TextStyle(color: Colors.yellow)),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  buildTextField("Name", _nameController),
                  SizedBox(height: 10),
                  buildTextField("Email", _emailController),
                  SizedBox(height: 10),
                  buildTextField("Message", _messageController, maxLines: 5),
                  SizedBox(height: 20),
                  isLoading
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          onPressed: sendEmail,
                          child: Text("Send Message", style: TextStyle(color: Colors.black)),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hint, TextEditingController controller, {int maxLines = 1}) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$hint cannot be empty!";
        }
        return null;
      },
    );
  }
}
📌 Penjelasan Kode
✔ Menggunakan Scaffold & AppBar → Untuk menampilkan judul "Contact Me" di bagian atas dengan warna kuning.
✔ Menggunakan Form → Untuk menangani validasi input sebelum dikirim ke EmailJS.
✔ Menggunakan TextFormField → Untuk input Name, Email, dan Message, dengan border putih.
✔ Menggunakan ElevatedButton → Untuk tombol "Send Message" dengan warna kuning & teks hitam.
✔ Menggunakan http.post() → Untuk mengirim data ke EmailJS API secara asynchronous.
✔ Menggunakan CircularProgressIndicator() → Untuk animasi loading saat mengirim pesan.
✔ Menggunakan SnackBar → Untuk menampilkan notifikasi sukses atau gagal.

📧 Mengirim Email dengan EmailJS
1️⃣ Daftar di EmailJS
2️⃣ Buat layanan dan template baru
3️⃣ Tambahkan service_id, template_id, dan user_id di contact_screen.dart
4️⃣ Deploy & uji coba!

🐞 Penanganan Error & Refresh
Jika email gagal dikirim, notifikasi akan muncul dan pengguna bisa mencoba lagi.

dart
Copy code
if (response.statusCode != 200) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Failed to send message. Try again!")),
  );
}
📌 Memastikan pengalaman pengguna tetap lancar tanpa frustrasi.
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
📂 Kode yang Digunakan
Untuk membangun tampilan ini, kita menggunakan AnimatedContainer untuk animasi menu, serta ListView untuk menampilkan form kontak.

1️⃣ Struktur Dasar Menu Animasi
Flutter menggunakan AnimatedContainer untuk menciptakan animasi smooth saat menu dibuka dan ditutup.

📌 Contoh Kode Flutter untuk Menu Animasi
dart
Copy code
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMenuOpen = false; // State untuk menentukan apakah menu terbuka atau tidak

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen; // Toggle state menu
    });
  }

  void navigateTo(Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("About Me", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: toggleMenu, // Ketika tombol menu ditekan, jalankan toggleMenu
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: isMenuOpen ? 200 : 0, // Menampilkan atau menyembunyikan menu dengan animasi
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
              Expanded(child: ContactScreen()), // Konten utama tetap terlihat di bawah menu
            ],
          ),
        ],
      ),
    );
  }

  Widget menuItem(IconData icon, String title, Widget screen) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      onTap: () {
        setState(() => isMenuOpen = false); // Tutup menu saat berpindah halaman
        navigateTo(screen);
      },
    );
  }
}
📂 Struktur Dasar Form Kontak
Bagian bawah menu tetap menampilkan formulir kontak, sehingga pengguna tetap bisa mengisi pesan meskipun menu terbuka.

📌 Contoh Kode Flutter untuk Halaman Kontak
dart
Copy code
class ContactScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Contact Me", style: TextStyle(color: Colors.yellow, fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          buildTextField("Name", _nameController),
          SizedBox(height: 10),
          buildTextField("Email", _emailController),
          SizedBox(height: 10),
          buildTextField("Message", _messageController, maxLines: 5),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: () {
              // Fungsi untuk mengirim pesan
            },
            child: Text("Send Message", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(String hint, TextEditingController controller, {int maxLines = 1}) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
📌 Penjelasan Kode
✔ Menggunakan AnimatedContainer → Untuk membuat animasi smooth saat membuka & menutup menu.
✔ Menggunakan ListTile → Untuk menampilkan menu dengan ikon & teks.
✔ Menggunakan Stack → Untuk memastikan menu tetap berada di atas halaman kontak.
✔ Menggunakan ElevatedButton → Untuk tombol "Send Message" dengan warna kuning & teks hitam.
✔ Menggunakan OutlineInputBorder → Untuk memberikan border putih pada input field.
✔ Menggunakan TextEditingController → Untuk menangani input pengguna dalam form kontak.

📧 Efek Animasi Menu
Saat tombol menu ditekan:
✔ Menu dropdown muncul dengan efek smooth ke bawah.
✔ Form kontak tetap terlihat di bawah menu.
✔ Setiap opsi menu dapat diklik untuk navigasi ke halaman lain.

Saat tombol menu ditekan kembali:
✔ Menu akan menutup dengan efek sliding ke atas.

