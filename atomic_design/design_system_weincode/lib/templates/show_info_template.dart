import 'package:design_system_weincode/atoms/weincode_separeted.dart';
import 'package:design_system_weincode/molecules/card_tile.dart';
import 'package:design_system_weincode/templates/models/showinfo.dart';
import 'package:flutter/material.dart';

class ShowInfoTemplate extends StatelessWidget {
  final String title;
  final List<ShowInfoDetail> listOfShowInfoDetail;
  const ShowInfoTemplate(
      {Key? key, required this.title, required this.listOfShowInfoDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: ListView.separated(
            itemBuilder: (_, index) {
              final ShowInfoDetail _showInfoDetail = listOfShowInfoDetail[index];
              return GestureDetector(
                onTap: ()=> Navigator.of(context).popAndPushNamed(_showInfoDetail.componentPage),
                child: WeincodeCardTile(
                    path: _showInfoDetail.pathImage,
                    title: _showInfoDetail.componentTitle,
                    id: _showInfoDetail.componentDescription),
              );
            },
            separatorBuilder: (context, _) =>
                const WeincodeSepareted(nSepareted: 0.5),
            itemCount: listOfShowInfoDetail.length),
      ),
    );
  }
}
