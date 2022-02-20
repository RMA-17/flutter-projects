import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Belajar UI",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Belajar UI"),
        // ),
        body: SafeArea(
          child: ListView(
            children: [
              Image.asset('images/ic_gunung.jpg'),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gunung Merapi",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Gunung di Pulau Jawa",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.bookmark_rounded,
                              color: Colors.yellow,
                            ),
                            Text("5.0")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Call",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.near_me,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Route",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: const [
                    Text(
                      "Gunung Mêrapi adalah gunung berapi di bagian tengah Pulau Jawa dan merupakan salah satu gunung api teraktif di Indonesia. Lereng sisi selatan berada dalam administrasi Kabupaten Sleman, Daerah Istimewa Yogyakarta, dan sisanya berada dalam wilayah Provinsi Jawa Tengah, yaitu Kabupaten Magelang di sisi barat, Kabupaten Boyolali di sisi utara dan timur, serta Kabupaten Klaten di sisi tenggara. Kawasan hutan di sekitar puncaknya menjadi kawasan Taman Nasional Gunung Merapi sejak tahun 2004.\n\nGunung ini memiliki potensi kebencanaan yang tinggi karena menurut catatan modern mengalami erupsi setiap dua sampai lima tahun sekali dan dikelilingi oleh permukiman yang padat. Sejak tahun 1548, gunung ini sudah meletus sebanyak 68 kali.[butuh rujukan] Kota Magelang dan Kota Yogyakarta adalah kota besar terdekat, berjarak kurang dari 30 km dari puncaknya. Di lerengnya masih terdapat permukiman sampai ketinggian 1.700 meter dan hanya berjarak empat kilometer dari puncak. Oleh karena tingkat kepentingannya ini, Merapi menjadi salah satu dari enam belas gunung api dunia yang termasuk dalam proyek Gunung Api Dekade Ini (Decade Volcanoes).",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
