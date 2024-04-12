class Sample {
  final String sample;
  Sample({required this.sample});

  factory Sample.fromJson({required Map<String, dynamic> json}) {
    return Sample(sample: json['sample']);
  }
}
