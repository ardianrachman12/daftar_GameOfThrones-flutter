import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:daftar_got/model/model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.model});

  final DaftarGot model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(child: Image.network(model.imageURL)),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                model.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.today_outlined),
                      Text(
                        model.date,
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.home_outlined),
                      Text(
                        model.city,
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.person_outline),
                      Text(
                        model.actor,
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w800),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Text(
                model.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(17),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(model.imageUrls[0]),
                  Image.network(model.imageUrls[1]),
                  Image.network(model.imageUrls[2]),
                  Image.network(model.imageUrls[3]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
