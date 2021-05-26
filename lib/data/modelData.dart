class JadwalModel {
  String imsyak;
  String shubuh;
  String dzuhur;
  String tanggal;
  String terbit;
  String magrib;
  String isya;
  String dhuha;
  String ashr;

  JadwalModel(
      {this.imsyak,
      this.shubuh,
      this.dzuhur,
      this.tanggal,
      this.terbit,
      this.magrib,
      this.isya,
      this.dhuha,
      this.ashr});

  factory JadwalModel.fromJson(Map<String, dynamic> json) => JadwalModel(
      imsyak: json['imsyak'],
      shubuh: json['shubuh'],
      dzuhur: json['dzuhur'],
      tanggal: json['tanggal'],
      terbit: json['terbit'],
      magrib: json['magrib'],
      isya: json['isya'],
      dhuha: json['dhuha'],
      ashr: json['ashr']);
}
