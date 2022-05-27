import 'package:flutter/material.dart';
import 'package:render_object_example/diferent_simple_body.dart';
import 'package:render_object_example/show_image.dart';
import 'package:render_object_example/simple_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool currentPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RenderObjectExample'),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = !currentPage;
                  });
                },
                icon: const Icon(Icons.account_balance_wallet))
          ],
        ),
        body: currentPage ? const SimpleBody(): const  DiferentSimpleBody());
  }
}

