import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  ContactScreenState createState() => ContactScreenState();
}

class ContactScreenState extends State<ContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  bool isSending = false;
  bool hasError = false; //  Variabel untuk mendeteksi error

  //  Fungsi untuk mengirim email menggunakan EmailJS API
  Future<void> sendEmail() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      isSending = true;
      hasError = false;
    });

    //  Konfigurasi EmailJS
    const serviceId = 'service_0t30daf';
    const templateId = 'template_9smdhzi';
    const userId = 'YJQoP43cSX51foN43';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
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

      if (!mounted) {
        return; //  Menghindari error penggunaan BuildContext dalam async function
      }

      if (response.statusCode == 200) {
        _nameController.clear();
        _emailController.clear();
        _messageController.clear();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Message sent successfully!")),
        );
      } else {
        throw Exception("Failed to send message.");
      }
    } catch (e) {
      setState(() {
        hasError = true; //  Jika error, akan mengaktifkan indikator error
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Failed to send message. Try again!")),
      );
    } finally {
      setState(() {
        isSending = false;
      });
    }
  }

  //  Fungsi untuk melakukan refresh jika terjadi error
  void refreshScreen() {
    setState(() {
      hasError = false; //  Reset error state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Contact Me",
          style: TextStyle(
            color: Colors.amber, //  Ubah warna teks di sini (misal: kuning)
            fontSize: 20, //  Ubah ukuran teks (opsional)
            fontWeight: FontWeight.bold, //  Buat teks lebih tebal
          ),
        ),
        centerTitle: true, //  Pastikan judul rata tengah
        backgroundColor: Colors.black,
      ),
      body:
          hasError
              ? Center(
                //  Jika error, tampilkan pesan dan tombol Retry
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, color: Colors.red, size: 50),
                    const SizedBox(height: 10),
                    const Text(
                      "An error occurred. Please try again.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: refreshScreen, //  Klik tombol untuk refresh
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      child: const Text(
                        "Retry",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )
              : SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  Input form
                      textField("Name", _nameController),
                      textField("Email", _emailController),
                      textField("Message", _messageController, maxLines: 4),
                      const SizedBox(height: 20),

                      //  Tombol kirim
                      Center(
                        child: ElevatedButton(
                          onPressed: isSending ? null : sendEmail,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            foregroundColor:
                                Colors.black, //  Warna teks pada tombol
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 20,
                            ),
                          ),
                          child:
                              isSending
                                  ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                  : const Text("Send Message"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }

  //  Widget untuk input field
  Widget textField(
    String label,
    TextEditingController controller, {
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white),
          border: const OutlineInputBorder(),
        ),
        style: const TextStyle(color: Colors.white),
        validator: (value) => value!.isEmpty ? "$label is required" : null,
      ),
    );
  }
}
