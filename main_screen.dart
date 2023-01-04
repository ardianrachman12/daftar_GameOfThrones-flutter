import 'package:daftar_got/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:daftar_got/model/model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("5 Pemeran Utama Game Of Thrones")),
      body: ListView.builder(
          itemBuilder: (context, index) {
            final DaftarGot model = daftarGameOfThrones[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return DetailScreen(
                      model: model,
                    );
                  })));
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.network(
                            model.imageURL,
                          )),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.actor,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(model.name)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ));
          },
          itemCount: daftarGameOfThrones.length),
    );
  }
}
