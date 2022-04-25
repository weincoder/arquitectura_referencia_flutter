import 'package:flutter/material.dart';
import 'package:gestion_estados/core/providers/cart_provider.dart';
import 'package:gestion_estados/core/widgets/our_image.dart';
import 'package:gestion_estados/domain/model/album/album.dart';
import 'package:provider/provider.dart';

//ignore: must_be_immutable
class AlbumTile extends StatefulWidget {
  final Album album;

  const AlbumTile({Key? key, required this.album})
      : super(key: key);

  @override
  State<AlbumTile> createState() => _AlbumTileState();
}

class _AlbumTileState extends State<AlbumTile> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return ListTile(
      leading: OurImage(url: widget.album.url, widthImage: 35, heightImage: 35),
      trailing: Checkbox(
        value: widget.album.checked,
        onChanged: (valueOfCheckBox) {
          setState(() {
            widget.album.checked = valueOfCheckBox!;
            valueOfCheckBox == false
                ? cartProvider.remove(widget.album)
                : cartProvider.add(widget.album);
          });
        },
      ),
      title: Text(
        widget.album.title,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
