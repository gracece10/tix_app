import 'package:flutter/material.dart';
import 'package:tix_app/page/AccountPage.dart';
import 'package:tix_app/page/NotificationPage.dart';

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
              padding: const EdgeInsets.only(left: 50),
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Cinema.png",
                        width: 70,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tandai bioskop favoritemu!",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Bioskop favoritemu akan berada paling atas",
                                style: TextStyle(fontSize: 12.5),
                              ),
                            ),
                            Text(
                              "pada daftar ini dan pada jadwal film",
                              style: TextStyle(fontSize: 12.5),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
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
              Divider(
                height: 55,
                thickness: 1,
              )
            ],
          )
        ],
      ),
    );
  }
}
