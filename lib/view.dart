import 'package:flutter/material.dart';

class View extends StatelessWidget {
  final String img;
  const View({required this.img, super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'View',
            style: TextStyle(color: Colors.white),
          )),
      body: Container(
        height: 200,
        width: 400,
        padding: const EdgeInsets.all(20),
        child: Image.network(img),
      ),
    );
  }
}
