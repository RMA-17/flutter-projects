import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hsi_app/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Masuk",
                      style: GoogleFonts.roboto(
                          fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'assets/images/hsi_logo.png',
                      scale: 6,
                    )
                  ],
                ),
                const Divider(
                  thickness: 0.2,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        autocorrect: false,
                        cursorColor: Colors.blueAccent,
                        enabled: true,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            labelText: "NIP atau nomor WA",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person)),
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        autocorrect: false,
                        cursorColor: Colors.blueAccent,
                        enabled: true,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.visibility)),
                            prefixIcon: const Icon(Icons.lock)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Lupa Password?",
                          style: GoogleFonts.roboto(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ))
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all<double>(8),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32)))),
                            icon: const Icon(Icons.login),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/main_page');
                            },
                            label: const Text("MASUK")),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
