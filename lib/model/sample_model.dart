class SampleModel {
  final String sample;
  const SampleModel({required this.sample});

  factory SampleModel.fromJson({
    required Map<String, dynamic> json,
  }) {
    return SampleModel(sample: json['sample']);
  }
}
