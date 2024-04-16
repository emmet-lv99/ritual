class ModelSample {
  String id;
  String author;
  int width;
  int height;
  String url;
  String download_url;

  ModelSample({
    required this.id,
    required this.author,
    required this.width,
    required this.height,
    required this.url,
    required this.download_url,
  });

  factory ModelSample.fromJson({required Map<String, dynamic> json}) {
    return ModelSample(
      id: json['id'],
      author: json['author'],
      width: json['width'],
      height: json['height'],
      url: json['url'],
      download_url: json['download_url'],
    );
  }
}
