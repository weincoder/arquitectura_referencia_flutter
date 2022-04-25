import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShowcaseApp🛒')),
      body: Center(
          child: Column(
        children: [
          Text(
            'Welcome 👾',
            style: Theme.of(context).textTheme.headline4,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Atoms ⚛',
                style: Theme.of(context).textTheme.headline6,
              )),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Molecules 🧩',
                style: Theme.of(context).textTheme.headline6,
              )),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Templates 𝍌',
                style: Theme.of(context).textTheme.headline6,
              )),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Pages 📱',
                style: TextStyle(color: Colors.white),
              )),
        ],
      )),
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.access_time)),
      //   BottomNavigationBarItem(icon: Icon(Icons.ac_unit)),
      // ]),
    );
  }
}
