import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 21,
        itemBuilder: (BuildContext context, int index) => Container(
              height: 42,
              color: Colors.deepPurple[600],
              padding: const EdgeInsets.all(13),
              child: Text(
                'Noticia número $index',
                style: const TextStyle(color: Colors.white),
              ),
            ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
              height: 13,
            ));
  }
}
