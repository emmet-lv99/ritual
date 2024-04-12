class Sample {
  final String id;
  final String author;
  final int width;
  final int height;
  final String url;
  final String download_url;
  Sample({
    required this.id,
    required this.author,
    required this.width,
    required this.height,
    required this.download_url,
    required this.url,
  });

  factory Sample.fromJson({required Map<String, dynamic> json}) {
    return Sample(
      id: json['id'],
      author: json['author'],
      width: json['width'],
      height: json['height'],
      download_url: json['download_url'],
      url: json['url'],
    );
  }
}
