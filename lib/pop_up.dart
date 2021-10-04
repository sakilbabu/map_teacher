import 'package:flutter/material.dart';
import 'package:map_teacher/books/book_details.dart';
import 'package:map_teacher/books/book_list.dart';

class PopUpButton extends StatelessWidget {
  const PopUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: Colors.transparent,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
        ),
        itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  "",
                  style: TextStyle(color: Colors.white),
                ),
                value: 1,
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Books()),
                    );
                  },
                  child: Text(
                    "Book",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                value: 2,
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },
                  child: Text(
                    "Electronics",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                value: 2,
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Fashion",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                value: 2,
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sports",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                value: 2,
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Kids",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                value: 2,
              )
            ]);
  }
}
