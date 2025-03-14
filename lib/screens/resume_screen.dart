import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Resume",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Bagian pengalaman kerja
            sectionTitle("Experience"),
            experienceItem(
              "🎨",
              "3D Artist Educator",
              "Sekolah Palembang Harapan",
              "Jul 2022 - Present",
              "Taught foundational 3D modeling skills using Blender, focusing on object creation, texturing, and rendering techniques.",
            ),
            experienceItem(
              "🎮",
              "Game Developer Educator",
              "Sekolah Palembang Harapan",
              "Jan 2023 - Present",
              "Responsible for teaching students the fundamentals of game development using Unity and C#, covering topics such as game mechanics and asset integration.",
            ),
            experienceItem(
              "💻",
              "Web Development Educator",
              "Sekolah Palembang Harapan",
              "Jan 2023 - Present",
              "Taught foundational web development skills, focusing on HTML and CSS to create responsive and accessible websites.",
            ),

            const SizedBox(height: 20),

            //  Bagian pendidikan
            sectionTitle("Education"),
            experienceItem(
              "🎓",
              "Bachelor of Education",
              "Universitas Harapan",
              "2018 - 2022",
              "Completed a dual-degree program, specializing in physics education with an emphasis on student-centered learning.",
            ),
            experienceItem(
              "🎓",
              "Bachelor of Informatics (Ongoing)",
              "Universitas Ciputra",
              "2024 - Present",
              "Currently pursuing a degree in Informatics, focusing on software development, data analysis, and emerging technologies.",
            ),
          ],
        ),
      ),
    );
  }

  //  Widget untuk menampilkan judul bagian (Experience, Education)
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.amber, // Warna kuning untuk kontras
          fontSize: 22,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4),
          ],
        ),
      ),
    );
  }

  //  Widget untuk menampilkan pengalaman kerja atau pendidikan
  Widget experienceItem(
    String emoji,
    String title,
    String company,
    String date,
    String description,
  ) {
    return Card(
      color:
          Colors
              .white12, // Warna kartu semi-transparan untuk kontras di background hitam
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  emoji,
                  style: const TextStyle(fontSize: 20),
                ), //  Ikon di awal
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              company,
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              date,
              style: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
