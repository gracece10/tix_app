import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TiketAktifPage extends StatefulWidget {
  const TiketAktifPage({Key? key}) : super(key: key);

  @override
  State<TiketAktifPage> createState() => _TiketAktifPageState();
}

class _TiketAktifPageState extends State<TiketAktifPage> {
  int selectedTabIndex = 0; // Keep track of the selected tab index

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
            ],
          ),
          // Konten terkait dengan tab yang dipilih
          Expanded(
            child: IndexedStack(
              index: selectedTabIndex,
              children: [
                // Konten untuk tab Film
                buildTabContent(0, 150, 'assets/popcorn.png'),
                // Konten untuk tab Makanan
                buildTabContent(1, 50, 'assets/popcorn.png'),
                // Konten untuk tab Event
                buildTabContent(2, 50, 'assets/popcorn.png'),
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
        // Update the selected tab index and trigger a rebuild
        setState(() {
          selectedTabIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10),
        child: Container(
          height: 30,
          width: MediaQuery.of(context).size.width / 4.8,
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

  Widget buildTabContent(int tabIndex, double containerSize, String image) {
    // Isi konten sesuai dengan indeks tab yang dipilih
    switch (tabIndex) {
      case 0:
        // Konten untuk tab Film
        return Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black, // Warna border dapat disesuaikan
              width: 2.0,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              image,
              //fit: BoxFit.cover,
              width: containerSize,
              height: containerSize,
            ),
          ),
        );
      case 1:
        // Konten untuk tab Makanan
        return Container(
          color: Colors.green, // Ganti dengan konten sesuai kebutuhan
          child: Center(
            child: Text("Konten Makanan"),
          ),
        );
      case 2:
        // Konten untuk tab Event
        return Container(
          color: Colors.blue, // Ganti dengan konten sesuai kebutuhan
          child: Center(
            child: Text("Konten Event"),
          ),
        );
      default:
        return Container(); // Konten default jika indeks tidak sesuai
    }
  }
}
