import 'package:album/domain/use_cases/album/album_use_cases.dart';
import 'package:album/infraestructure/driven_adapters/get_album_api/album_api.dart';
import 'package:album/ui/pages/album_page.dart';
import 'package:app/config/album_inherited.dart';

import 'package:flutter/material.dart';

import '../services/custom_album_api.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late AlbumApi albumApi;
  late CustomAlbumApi customAlbumApi;
  late GetAlbumUseCase getAlbumUseCase;
  @override
  void initState() {
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        AlbumPage(albumUseCase: AlbumInheritedWidget.of(context).getAlbumUseCase))),
                child: const Text('IR A ALBUM'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
