import 'package:flutter/material.dart';
import 'package:tix_app/page/AccountPage.dart';
import 'package:tix_app/page/NotificationPage.dart';
import 'package:tix_app/page/OrderTiketPage.dart';

class BioskopPage extends StatefulWidget {
  const BioskopPage({super.key});

  @override
  State<BioskopPage> createState() => _BioskopPageState();
}

class _BioskopPageState extends State<BioskopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.only(left: 80),
              child: Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
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
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("BANJARMASIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Image.asset(
                          "assets/Cinema.png",
                          width: 60,
                          height: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tandai bioskop favoritmu!",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Bioskop favoritmu akan berada paling atas",
                                style: TextStyle(fontSize: 13.5),
                              ),
                            ),
                            Text(
                              "pada daftar ini dan pada jadwal film.",
                              style: TextStyle(fontSize: 13.5),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Container(
                                height: 25,
                                width: 70,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(17)),
                                child: Center(
                                  child: Text(
                                    "Mengerti",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 35,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(
                  Icons.stars,
                  size: 24,
                  color: Colors.grey.shade400,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderTiketPage()));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("STUDIO BANJARMASIN PREMIERE"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 35,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(
                  Icons.stars,
                  size: 24,
                  color: Colors.grey.shade400,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("STUDIO XXI BANJARMASIN"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                    color: Colors.grey.shade900,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 35,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
