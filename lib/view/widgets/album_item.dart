import 'package:flutter/material.dart';
import 'package:photo_album/data/model/album.dart';

class AlbumItem extends StatelessWidget{

  final Album album;

  const AlbumItem({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(10),
            color: Colors.black26,
            child: const Icon(
              Icons.photo,
              color: Colors.black26,
              size: 90,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                album.title,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]
      ),
    );
  }
}
