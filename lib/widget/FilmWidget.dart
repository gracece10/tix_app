import 'package:flutter/material.dart';

class FilmWidget extends StatefulWidget {
  const FilmWidget({super.key});

  @override
  State<FilmWidget> createState() => _FilmWidgetState();
}

class _FilmWidgetState extends State<FilmWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          FilmCard("images/1.jpg"),
          FilmCard("images/2.jpg"),
          FilmCard("images/3.jpg"),
          FilmCard("images/4.jpg"),
          FilmCard("images/5.jpg"),
          FilmCard("images/6.jpg"),
          FilmCard("images/7.jpg"),
          FilmCard("images/8.jpg"),
        ],
      ),
    );
  }
}

Widget FilmCard(image) {
  return AspectRatio(
    aspectRatio: 2 / 3.3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    ),
  );
}
