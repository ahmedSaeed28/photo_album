import 'package:flutter/material.dart';
import 'package:photo_album/data/model/photo.dart';
import 'package:photo_album/view/widgets/photo_item.dart';

class PhotosGrid extends StatelessWidget  {

  final List<Photo> photos;
  final Function onPress;

  const PhotosGrid({Key? key, required this.photos, required this.onPress})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.82
      ),
      padding: const EdgeInsets.all(5),
      shrinkWrap: true,
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => onPress(photos[index]),
          child: PhotoItem(
            photo: photos[index]
          ),
        );
      },
    );
  }
}
