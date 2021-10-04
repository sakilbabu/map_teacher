import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map_teacher/books/read.dart';
import 'package:map_teacher/home_tabs/data_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPreview extends StatelessWidget {
  const DetailsPreview({
    required this.books,
  });

  final Books books;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                books.images,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            books.bookName,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            books.writer,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Series : Himu",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Read()),
                );
              },
              child: const Text("Read")),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () => launch("https://bdebooks.com/genre/himu/"),
              child: const Text(
                "Explore to website",
              )),
        ],
      ),
    );
  }
}
