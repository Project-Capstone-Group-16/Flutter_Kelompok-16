class LokasiLoker {
  int id;
  String lokasiLoker;
  String description;
  String alamat;
  String image;

  LokasiLoker({
    required this.id,
    required this.lokasiLoker,
    required this.description,
    required this.alamat,
    required this.image,
  });

  factory LokasiLoker.fromJson(Map<String, dynamic> json) {
    return LokasiLoker(
      id: json['id'],
      lokasiLoker: json['lokasiLoker'],
      description: json['description'],
      alamat: json['alamat'],
      image: json['image'],
    );
  }
}
