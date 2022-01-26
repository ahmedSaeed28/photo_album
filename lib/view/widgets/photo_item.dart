import 'package:flutter/material.dart';
import 'package:photo_album/data/model/photo.dart';

class PhotoItem extends StatelessWidget{

  final Photo photo;

  const PhotoItem({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black45)
      ),
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Image.network(photo.thumbnailUrl),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                photo.title,
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
