import 'package:flutter/material.dart';
import 'package:gestion_estados/core/providers/cart_provider.dart';
import 'package:gestion_estados/core/widgets/album_tile.dart';
import 'package:provider/provider.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Resumen',
          style: Theme.of(context).textTheme.headline2,
        )),
        body: Column(children: [
          SizedBox(
            height: 250,
            child: Consumer<CartProvider>(
              builder: (BuildContext context, carProvider, _) {
                return ListView.builder(
                  itemCount: carProvider.listOfAlbums.length,
                  itemBuilder: (_, index) =>
                      AlbumTile(album: carProvider.listOfAlbums[index]),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      'la experiencia de compras  no se ha implementado.')));
            },
            child: Text(
              'Comprar',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ]));
  }
}
