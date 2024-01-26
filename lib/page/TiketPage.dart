import 'package:flutter/material.dart';
import 'package:tix_app/page/AccountPage.dart';
import 'package:tix_app/page/DaftarTransaksiPage.dart';
import 'package:tix_app/page/NotificationPage.dart';
import 'package:tix_app/page/TiketAktifPage.dart';

class TiketPage extends StatefulWidget {
  const TiketPage({super.key});

  @override
  State<TiketPage> createState() => _TiketPageState();
}

class _TiketPageState extends State<TiketPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Tab> _tabs = [
    Tab(
      text: "TIKET AKTIF",
    ),
    Tab(
      text: "DAFTAR TRANSAKSI",
    ),
  ];

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
      body: SafeArea(
        child: Column(
          children: [
            // tabs
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  // first model tabbar
                  TabBar(controller: _tabController, tabs: _tabs),
                  // TabBarView
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        // Content for TIKET AKTIF
                        TiketAktifPage(),
                        // Content for DAFTAR TRANSAKSI
                        DaftarTransasksiPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
