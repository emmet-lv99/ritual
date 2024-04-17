class DataModel {
  final String id;
  final String author;
  final int width;
  final int height;
  final String url;
  final String download_url;

  DataModel({
    required this.id,
    required this.author,
    required this.width,
    required this.height,
    required this.url,
    required this.download_url,
  });

  factory DataModel.fromJson({required Map<String, dynamic> json}) {
    return DataModel(
      id: json['id'],
      author: json['author'],
      width: json['width'],
      height: json['height'],
      url: json['url'],
      download_url: json['download_url'],
    );
  }
}
