import 'package:get/get.dart';
import 'package:photo_album/controllers/albums_controllers.dart';
import 'package:photo_album/data/repository/albums_repository.dart';

class AlbumBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AlbumsRepository(Get.find()));
    Get.put(AlbumsController(Get.find()));
  }
}
