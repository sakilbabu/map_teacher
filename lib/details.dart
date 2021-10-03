import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Details(String categori, {required this.details});
  List<String> details;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text(widget.details.toString()),
      ),
    );
  }
}
