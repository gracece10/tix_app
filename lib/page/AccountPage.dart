import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          "Akun Saya",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
              height: 110,
              decoration: BoxDecoration(color: Color(0xFF1A2C50)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "AHMAD RIZQI",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                    Text(
                      "085249904306",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              )),
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // warna bayangan
                      blurRadius: 5.0, // tingkat kabur
                      offset: Offset(0, 2), // pergeseran bayangan (x, y)
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/IconDana.png",
                      height: 80,
                      width: 100,
                    ),
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF1A2C50),
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                        child: Text(
                          "AKTIFKAN",
                          style: TextStyle(
                              color: Color(0xFF1A2C50),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 28, bottom: 28),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(Icons.star_border),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Dapatkan Reward Dana"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 25,
                    thickness: 1,
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/Voucher.png",
                          height: 20,
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Voucher Saya"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 215),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 28, bottom: 28),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Film.png",
                            height: 20,
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Film Saya"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 240),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                      color: Colors.grey.shade200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/like.png",
                            height: 20,
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Konten Yang Disukai"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 170),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
