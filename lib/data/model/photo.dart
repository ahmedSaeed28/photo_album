import 'dart:io';

class Photo{
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
  File? file;

  Photo(this.id, this.title, this.url, this.thumbnailUrl);

  Photo.fromMap(Map<String, dynamic> map) :
        id = map['id'].toInt(),
        title = map['title'],
        url = map['url'],
        thumbnailUrl = map['thumbnailUrl'];

  Map<String, dynamic> toMap() {
    return {'id': id.toString(), 'title': title, 'url': url,
      'thumbnailUrl': thumbnailUrl};
  }

  static List<Photo> fromListJson(dynamic json) =>
      (json as List<dynamic>).map((photo) => Photo.fromMap(photo)).toList();
}
