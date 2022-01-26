import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:photo_album/binding/album_binding.dart';
import 'package:photo_album/binding/photo_binding.dart';
import 'package:photo_album/routes/routes.dart';
import 'package:photo_album/view/screens/albums_screen.dart';
import 'package:photo_album/view/screens/photos_screen.dart';
import 'package:photo_album/view/screens/preview_screen.dart';

class Pages {
  static final routes = [
    GetPage(
      name: Routes.albums,
      page: () => const AlbumsScreen(key: Key(Routes.albums)),
      binding: AlbumBinding(),
    ),
    GetPage(
      name: Routes.photos,
      page: () => PhotosScreen(key: const Key(Routes.photos)),
      binding: PhotosBinding(),
    ),
    GetPage(
      name: Routes.preview,
      page: () => const PreviewScreen(key: Key(Routes.preview)),
    )
  ];
}
