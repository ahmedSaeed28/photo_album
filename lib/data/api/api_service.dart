import 'package:get/get_connect/http/src/response/response.dart';
import 'package:photo_album/data/model/album.dart';
import 'package:photo_album/data/model/photo.dart';

abstract class APiService{

  Future<Response<List<Album>>> getAlbums();

  Future<Response<List<Photo>>> getPhotos(String id);
}
