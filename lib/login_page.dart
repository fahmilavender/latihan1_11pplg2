import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin = "Login Status";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to our application",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Roboto',
              ),
            ),
            const Text("Please fill username and password below"),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: const Image(
                  image: AssetImage("assets/images/realmadrid.png"),
                  height: 100,
                  width: 400,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: txtUsername,
                decoration: const InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 2, bottom: 2),
              child: TextField(
                controller: txtPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  if (txtUsername.text == "admin" &&
                      txtPassword.text == "admin123") {
                    setState(() {
                      statusLogin = "Sukses Login";
                    });
                  } else {
                    setState(() {
                      statusLogin = "Gagal";
                    });
                  }
                  print("Status:" + statusLogin);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Login"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 32),
              child: Text(statusLogin),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    text: "Belum punya akun? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Daftar sekarang",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
