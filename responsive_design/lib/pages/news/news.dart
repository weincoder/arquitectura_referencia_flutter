import 'package:flutter/material.dart';
import 'package:responsive_design/components/news_detail.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Conoce lo nuevo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: const [
          Padding(
            padding: EdgeInsets.all(24),
            child: Text('esto es lo nuevo en noticias'),
          ),
          Expanded(child: NewsDetail())
        ]),
      ),
    );
  }
}
