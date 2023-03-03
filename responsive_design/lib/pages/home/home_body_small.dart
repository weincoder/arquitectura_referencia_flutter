import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_design/pages/news/news.dart';

class HomeBodySmall extends StatelessWidget {
  const HomeBodySmall({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sumaDeLados = pow(size.width, 2) + pow(size.height, 2);
    var diagonal = sqrt(sumaDeLados) * 0.045;
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Responsive Design Small')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Soy un texto algo largo',
                style: TextStyle(
                  fontSize: diagonal,
                ),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  height: 144,
                  color: Colors.deepPurple[200],
                  child: Center(child: Text('Pantalla Pequeña $index')),
                ),
                itemCount: 21,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 13,
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
                padding: const  EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[300],
                child: Row(
                  children: [
                    const Text(
                      'Conoce lo nuevo',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () =>
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const NewsPage()))
                      ,
                        child: const Text('Ir'))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
