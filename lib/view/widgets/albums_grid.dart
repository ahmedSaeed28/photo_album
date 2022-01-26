import 'package:flutter/material.dart';
import 'package:photo_album/data/model/album.dart';
import 'package:photo_album/view/widgets/album_item.dart';

class AlbumsGrid extends StatelessWidget  {

  final List<Album> albums;
  final Function onPress;

  const AlbumsGrid({Key? key, required this.albums, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      padding: const EdgeInsets.all(5),
      shrinkWrap: true,
      itemCount: albums.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: InkWell(
            onTap: () => onPress(albums[index]),
            child: AlbumItem(
              key: Key(albums[index].id.toString()),
              album: albums[index],
            ),
          ),
        );
      },
    );
  }
}
