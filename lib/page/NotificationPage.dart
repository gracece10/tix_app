import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifikasi",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(47),
                  ),
                  child: Icon(
                    Icons.notification_important,
                    size: 80,
                    color: Colors.grey.shade200,
                  )),
            ),
            Text(
              "Belum ada notifikasi. Ayo beli tiket sekarang!",
              style: GoogleFonts.ptSans(color: Colors.grey.shade400),
            )
          ],
        ),
      ),
    );
  }
}
