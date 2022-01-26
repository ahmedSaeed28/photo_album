class Album{
  final int id;
  final String title;

  Album(this.id, this.title);

  Album.fromMap(Map<String, dynamic> map) :
        id = map['id'].toInt(),
        title = map['title'];

  Map<String, dynamic> toMap() {
    return {'id': id.toString(), 'title': title};
  }

  static List<Album> fromListJson(dynamic json) =>
      (json as List<dynamic>).map((album) => Album.fromMap(album)).toList();
}
