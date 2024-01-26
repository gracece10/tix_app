import 'package:flutter/material.dart';

class OrderTiketPage extends StatefulWidget {
  const OrderTiketPage({super.key});

  @override
  State<OrderTiketPage> createState() => _OrderTiketPageState();
}

class _OrderTiketPageState extends State<OrderTiketPage> {
  List<String> jamList = [
    '09:40',
    '14:20',
    '16:50',
    '18:30',
    '20:15',
    '22:00',
    '23:45',
    '01:30'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            "STUDIO BANJARMASIN PREMIERE",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/Maps.jpg",
              fit: BoxFit.cover,
              height: 180,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 3.3,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo.shade900),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.stars,
                        size: 25,
                        color: Colors.grey.shade400,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "FAVORIT",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 26,
                    color: Colors.grey.shade400,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "DUTA MALL Lantai 3 Jl. Ahmad Yani KM 3 Banjarmasin",
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 26,
                    color: Colors.grey.shade400,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "(0511)4365521",
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 40,
              thickness: 8,
              color: Colors.grey.shade200,
            ),
            Text("Untuk Date"),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Divider(
                height: 40,
                thickness: 2,
                color: Colors.grey.shade200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/1.jpg",
                        height: 150,
                        width: 100,
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ELEMENTAL",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                "Genre",
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 65),
                                child: Text(
                                  "Animation",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                "Durasi",
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: Text(
                                  "1j 45m",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                "Sutradara",
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  "Ahmad Rizqi",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                "Rating Usia",
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28),
                                child: Container(
                                  height: 13,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200),
                                  child: Center(
                                    child: Text(
                                      "D 18+",
                                      style: TextStyle(
                                          color: Colors.red.shade400,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2D",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    "Rp 60.000",
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: SizedBox(
                height: 29,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: jamList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          width: 76,
                          height: 29,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 21, vertical: 7),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black.withOpacity(0.2),
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Center(
                            child: Text(
                              jamList[index],
                              style: TextStyle(
                                color: Color(0xFF282828),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: 390,
                height: 28,
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 12,
                  bottom: 8,
                ),
                decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(children: [
                              Image.asset("assets/Crosshair.png")
                            ]),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Lokasi saat ini:',
                            style: TextStyle(
                              color: Color(0xFFA1A1A3),
                              fontSize: 9,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Jalan Ahmad Yani KM 3 Banjarmasin',
                      style: TextStyle(
                        color: Color(0xFFA1A1A3),
                        fontSize: 9,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(color: Color(0xFF223B63)),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child:
                          Stack(children: [Image.asset("assets/BuyTiket.png")]),
                    ),
                    Text(
                      'BELI TIKET',
                      style: TextStyle(
                        color: Color(0xFFFFC000),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
