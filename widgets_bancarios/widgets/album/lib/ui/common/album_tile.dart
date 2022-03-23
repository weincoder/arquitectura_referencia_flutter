import 'package:album/ui/common/our_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumTile extends StatelessWidget {
  final String url;
  final String title;
  final String id;
  const AlbumTile({Key? key, required this.url, required this.title, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(color:  Color(0xFFE6E7E8)),
      margin: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OurImage(url: url,
              widthImage: 150 ,
              heightImage: 150),
          Column(
            children: [
              Container(
                width: 200,
                padding: const  EdgeInsets.fromLTRB(10, 2, 10, 0),
                  child:
                      Text(title,
                        key: const Key('title-album-api'),
                        style: GoogleFonts.abel(fontSize: 18),
                      textAlign: TextAlign.center,),
                ) ,
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(id, style: GoogleFonts.salsa(fontSize: 24),),
              ) ,
            ],
        )
        ],
      ),
    );
  }
}
