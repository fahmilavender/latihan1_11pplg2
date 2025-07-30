import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final tanggalController = TextEditingController();

  String _selectedGender = "Laki-laki";

  @override
  void dispose() {
    namaController.dispose();
    emailController.dispose();
    passwordController.dispose();
    tanggalController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        tanggalController.text = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(label: "Nama", controller: namaController),
              CustomTextField(
                  label: "Email / Username", controller: emailController),
              CustomTextField(
                  label: "Password",
                  controller: passwordController,
                  isPassword: true),
              CustomTextField(
                label: "Tanggal Lahir",
                controller: tanggalController,
                readOnly: true,
                onTap: _selectDate,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jenis Kelamin",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black.withOpacity(0.6)),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => setState(() => _selectedGender = "Laki-laki"),
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: "Laki-laki",
                                  groupValue: _selectedGender,
                                  onChanged: (value) => setState(() => _selectedGender = value!),
                                ),
                                const Text("Laki-laki"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => setState(() => _selectedGender = "Perempuan"),
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: "Perempuan",
                                  groupValue: _selectedGender,
                                  onChanged: (value) => setState(() => _selectedGender = value!),
                                ),
                                const Text("Perempuan"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Builder(
                builder: (BuildContext innerContext) {
                  return ElevatedButton(
                    onPressed: () {
                      final message =
                          "Nama: ${namaController.text}\nEmail: ${emailController.text}\nGender: $_selectedGender\nTanggal Lahir: ${tanggalController.text}";
                      
                      ScaffoldMessenger.of(innerContext).showSnackBar(
                        SnackBar(
                          content: Text("Registrasi Berhasil!\n\n$message"),
                          duration: const Duration(seconds: 5),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text("Daftar"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



