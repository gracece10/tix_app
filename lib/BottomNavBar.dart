import 'package:flutter/material.dart';
import 'package:tix_app/page/BioskopPage.dart';
import 'package:tix_app/page/HomePage.dart';
import 'package:tix_app/page/TiketPage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Map<String, dynamic>> bottomNavItems = [
    {"icon": "assets/Beranda.png", "label": "Beranda"},
    {"icon": "assets/Bioskop.png", "label": "Bioskop"},
    {"icon": "assets/Tiket.png", "label": "Tiket"},
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentPage) {
        case 0:
          return const HomePage();
        case 1:
          return BioskopPage();
        case 2:
          return TiketPage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      body: body(),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              bottomNavItems.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentPage = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        bottomNavItems[index]["icon"],
                        width: 24,
                        height: 24,
                        color: currentPage == index
                            ? Colors.blue // Highlight the selected icon
                            : Colors.grey,
                      ),
                      Text(
                        bottomNavItems[index]["label"],
                        style: TextStyle(
                          color: currentPage == index
                              ? Colors.blue // Highlight the selected label
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
