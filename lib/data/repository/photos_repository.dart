import 'package:photo_album/data/api/api_service.dart';
import 'package:photo_album/data/model/photo.dart';

class PhotosRepository{

  final APiService apiService;

  PhotosRepository(this.apiService);

  Future<List<Photo>> getPhotos(String id) async{
    final response = await apiService.getPhotos(id);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body!;
    }
  }
}
