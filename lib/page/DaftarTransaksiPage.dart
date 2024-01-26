import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarTransasksiPage extends StatefulWidget {
  const DaftarTransasksiPage({super.key});

  @override
  State<DaftarTransasksiPage> createState() => _DaftarTransasksiPageState();
}

class _DaftarTransasksiPageState extends State<DaftarTransasksiPage> {
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              // TiketAktif.Film
              buildTabContainer(0, "Film", context),
              // TiketAktif.Makanan
              buildTabContainer(1, "Makanan", context),
              // TiketAktif.Event
              buildTabContainer(2, "Event", context),
              buildTabContainer(3, "Voucher", context),
            ],
          ),
          // Konten terkait dengan tab yang dipilih
          Expanded(
            child: IndexedStack(
              index: selectedTabIndex,
              children: [
                buildTabContent(0),
                buildTabContent(1),
                buildTabContent(2),
                buildTabContent(3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTabContainer(int index, String title, BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTabIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10),
        child: Container(
          height: 30,
          width: MediaQuery.of(context).size.width / 5.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: selectedTabIndex == index ? Colors.blue : Colors.grey,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: selectedTabIndex == index
                    ? Colors.blue
                    : Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTabContent(int tabIndex) {
    switch (tabIndex) {
      case 0:
        // Konten untuk tab Film
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade100),
                    child: Icon(
                      Icons.local_movies_outlined,
                      size: 70,
                      color: Colors.grey.shade300,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Mulai Nonton Film Seru",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "Dapatkan tiket nonton seru di",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Text(
                  "bioskop favoritmu.",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 6, 70),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        "Lihat Film",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      case 1:
        // Konten untuk tab Makanan
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Column(
              children: [
                Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade100),
                    child: Icon(
                      Icons.food_bank,
                      size: 70,
                      color: Colors.grey.shade300,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Belum Ada Makanan Atau",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Minuman Nih",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "Dapatkan makanan dan minuman",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Text(
                  "lezat dari bioskop untuk pengalaman",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "nonton terbaikmu!",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 6, 70),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        "Pesan Sekarang",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      case 2:
        // Konten untuk tab Event
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade100),
                    child: Icon(
                      Icons.local_movies_outlined,
                      size: 70,
                      color: Colors.grey.shade300,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Anda Belum Memiliki Tiket Event",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "Tidak ada transaksi tiket event",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 6, 70),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        "Lihat Event",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      case 3:
        // Konten untuk tab Event
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Column(
              children: [
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade100),
                    child: Icon(
                      Icons.percent,
                      size: 70,
                      color: Colors.grey.shade300,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Tidak Ada Transaksi Voucher",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "Beli voucher untuk mendapatkan promo menarik",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return Container(); // Konten default jika indeks tidak sesuai
    }
  }
}
