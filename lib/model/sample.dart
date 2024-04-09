class Sample {
  final String s;
  final int a;
  final String m;
  final String p;
  final String l;
  final String e;

  const Sample({
    required this.s,
    required this.a,
    required this.m,
    required this.p,
    required this.l,
    required this.e,
  });

  factory Sample.fromJson({required Map<String, dynamic> json}) {
    return Sample(
      s: json['s'],
      a: json['a'],
      m: json['m'],
      p: json['p'],
      l: json['l'],
      e: json['e'],
    );
  }
}
