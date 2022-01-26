import 'package:get/get.dart';
import 'package:photo_album/data/model/album.dart';
import 'package:photo_album/data/repository/albums_repository.dart';

class AlbumsController extends GetxController with StateMixin<List<Album>> {

  final AlbumsRepository albumsRepository;

  AlbumsController(this.albumsRepository);

  @override
  void onInit() {
    super.onInit();
    _getAlbums();
  }

  void _getAlbums() async {
    await albumsRepository.getAlbums().then((data){
      change(data, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}
