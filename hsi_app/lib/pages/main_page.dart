import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ahlan wa Sahlan",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text(
                              "EDUHSI versi 29292922929",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.normal, fontSize: 12),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/images/hsi_logo.png',
                          scale: 6,
                        )
                      ],
                    ),
                  ],
                ),
                const Divider(indent: 20),
                const SizedBox(height: 26),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.insert_drive_file_rounded,
                              size: 18,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Update sistem",
                              style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Update Sistem - Mode Gelap",
                              style: GoogleFonts.roboto(
                                fontSize: 26,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Alhamdulillah, tim IT HSI telah melakukan update system diantaranya adalah dukungan sistem terhadap mode gelap (dark mode)",
                          style: GoogleFonts.roboto(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
      ]),
    );
  }
}
