import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_design/components/news_detail.dart';

class HomeBodyLarge extends StatelessWidget {
  const HomeBodyLarge({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sumaDeLados = pow(size.width, 2) + pow(size.height, 2);
    var diagonal = sqrt(sumaDeLados) * 0.045;
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Responsive Design Small')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: Column(
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.deepPurple[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: const [
                    Text('Conoce lo nuevo',
                        style: TextStyle(color: Colors.white)),
                        SizedBox(height: 13,),
                    Expanded(child: NewsDetail())
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
