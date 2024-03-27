import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:tix_app/page/AccountPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureText = true;
  void login(String email, password) async {
    try {
      Response response = await post(
        Uri.parse("https://reqres.in/api/login"),
        body: {"email": email, "password": password},
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AccountPage()),
        );
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masuk ke TIX ID"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "EMAIL", hintText: 'Masukan Email'),
            ),
            SizedBox(
              height: 10,
            ),
            // TextFormField(
            //   controller: passwordController,
            //   decoration: InputDecoration(
            //       labelText: 'PASSWORD', hintText: 'Masukan Password'),
            // ),
            TextFormField(
              controller: passwordController,
              obscureText: obscureText,
              decoration: InputDecoration(
                labelText: 'PASSWORD',
                hintText: 'Masukan Password',
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                login(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text("Masuk",
                      style: GoogleFonts.ptSans(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Belum punya akun? ",
              style: GoogleFonts.ptSans(color: Colors.grey.shade600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text("Daftar Sekarang",
                    style: GoogleFonts.ptSans(
                      color: Colors.grey.shade600,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
