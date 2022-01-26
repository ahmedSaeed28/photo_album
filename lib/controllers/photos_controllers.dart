import 'package:get/get.dart';
import 'package:photo_album/data/model/album.dart';
import 'package:photo_album/data/model/photo.dart';
import 'package:photo_album/data/repository/photos_repository.dart';

class PhotosController extends GetxController with StateMixin<List<Photo>> {

  final Album album;
  final PhotosRepository photosRepository;

  PhotosController(this.album, this.photosRepository);

  @override
  void onInit() {
    super.onInit();
    _getPhotos();
  }

  void _getPhotos() async {
    await photosRepository.getPhotos(album.id.toString()).then((data){
      change(data, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}
