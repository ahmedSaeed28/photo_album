import 'package:get/get_connect/connect.dart';
import 'package:photo_album/data/api/api_service.dart';
import 'package:photo_album/data/model/album.dart';
import 'package:photo_album/data/model/photo.dart';

class APiServiceHandler extends GetConnect implements APiService{

  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/';
  }

  @override
  Future<Response<List<Album>>> getAlbums() =>
      get('albums', decoder: Album.fromListJson);

  @override
  Future<Response<List<Photo>>> getPhotos(String id) =>
      get('albums/$id/photos', decoder: Photo.fromListJson);
}
