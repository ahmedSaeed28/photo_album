import 'package:get/get.dart';
import 'package:photo_album/controllers/photos_controllers.dart';
import 'package:photo_album/data/model/album.dart';
import 'package:photo_album/data/repository/photos_repository.dart';

class PhotosBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PhotosRepository(Get.find()));
    Get.put(PhotosController(Get.arguments as Album, Get.find()));
  }
}
