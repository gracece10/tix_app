import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tix_app/page/AccountPage.dart';
import 'package:tix_app/page/NotificationPage.dart';
import 'package:tix_app/widget/FilmWidget.dart';
// import 'package:tix_app/widget/ItemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color semuaFilmBorderColor = Colors.grey;
  Color semuaFilmTextColor = Colors.black;
  Color semuaFilmContainerColor = Colors.transparent;

  Color xxiBorderColor = Colors.grey;
  Color xxiTextColor = Colors.black;
  Color xxiContainerColor = Colors.transparent;

  Color watchlistBorderColor = Colors.grey;
  Color watchlistTextColor = Colors.black;
  Color watchlistContainerColor = Colors.transparent;
  bool isWatchlistSelected = false;
  final List<String> imagePaths = [
    'assets/Slider1.jpg',
    'assets/Slider2.jpg',
    'assets/Slider3.jpg',
    'assets/Slider4.jpg',
    'assets/Slider5.jpg',
    'assets/Slider6.jpg',
    'assets/Slider7.png',
    'assets/Slider8.jpg',
    'assets/Slider9.jpg',
    'assets/Slider10.jpg',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              height: 30,
              width: 210,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10.0),
                  Icon(Icons.search),
                  SizedBox(width: 5.0),
                  Text("Cari di TIX ID"),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("BANJARMASIN"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150.0,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CarouselSlider(
                          items: imagePaths.map((path) {
                            return Image.asset(path, fit: BoxFit.cover);
                          }).toList(),
                          options: CarouselOptions(
                            height: 150.0,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            enableInfiniteScroll: true,
                            viewportFraction: 1.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imagePaths.map((url) {
                            int index = imagePaths.indexOf(url);
                            return Container(
                              width: 5.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 2.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Sedang Tayang",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Row(
                      children: [
                        Text(
                          "Semua",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IntrinsicWidth(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        semuaFilmBorderColor = Colors.blue;
                        semuaFilmTextColor = Colors.blue;

                        // Reset warna untuk XXI dan Watchlist Saya
                        xxiBorderColor = Colors.grey;
                        xxiTextColor = Colors.black;
                        xxiContainerColor = Colors.transparent;

                        watchlistBorderColor = Colors.grey;
                        watchlistTextColor = Colors.black;
                        isWatchlistSelected = false; // Reset status Watchlist
                      });
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 0, left: 20, right: 5),
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: semuaFilmBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Semua Film",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: semuaFilmTextColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IntrinsicWidth(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        xxiBorderColor = Colors.brown;
                        xxiTextColor = Colors.white;
                        xxiContainerColor = Colors.brown;

                        // Reset warna untuk Semua Film dan Watchlist Saya
                        semuaFilmBorderColor = Colors.grey;
                        semuaFilmTextColor = Colors.black;
                        semuaFilmContainerColor = Colors.transparent;

                        watchlistBorderColor = Colors.grey;
                        watchlistTextColor = Colors.black;
                        isWatchlistSelected = false; // Reset status Watchlist
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: xxiBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(17),
                          color: xxiContainerColor,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "XXI",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: xxiTextColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IntrinsicWidth(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        watchlistBorderColor = Colors.blue;
                        watchlistTextColor = Colors.blue;
                        watchlistContainerColor = Colors.blue.withOpacity(0.2);

                        // Reset warna untuk Semua Film dan XXI
                        semuaFilmBorderColor = Colors.grey;
                        semuaFilmTextColor = Colors.black;
                        semuaFilmContainerColor = Colors.transparent;

                        xxiBorderColor = Colors.grey;
                        xxiTextColor = Colors.black;
                        xxiContainerColor = Colors.transparent;

                        isWatchlistSelected = true; // Set status Watchlist
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 0, top: 0),
                      child: Container(
                        height: 20, // Tambahkan tinggi sesuai kebutuhan
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: watchlistBorderColor,
                          ),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  isWatchlistSelected
                                      ? Icons.favorite // Menggunakan ikon penuh
                                      : Icons
                                          .favorite_outline, // Menggunakan ikon outline
                                  color: Colors.redAccent.shade400,
                                  size: 12,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Watchlist Saya",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: watchlistTextColor,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: FilmWidget(),
            )
          ],
        ),
      ),
    );
  }
}
