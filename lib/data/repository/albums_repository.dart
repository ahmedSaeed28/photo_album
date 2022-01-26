import 'package:photo_album/data/api/api_service.dart';
import 'package:photo_album/data/model/album.dart';

class AlbumsRepository{

  final APiService apiService;

  AlbumsRepository(this.apiService);

  Future<List<Album>> getAlbums() async{
    final response = await apiService.getAlbums();
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body!;
    }
  }
}
