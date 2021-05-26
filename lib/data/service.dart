import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'modelData.dart';

class JadwalService extends ChangeNotifier {
  List<JadwalModel> _data = [];
  List<JadwalModel> get dataJadwal => _data;

  static final DateTime now = DateTime.now();
  String bulan = now.toString().substring(5, 7);
  String tahun = now.toString().substring(0, 4);

  Future<List<JadwalModel>> getResep() async {

    print("PRINT_CEK_DATE : $now || $bulan || $tahun");

    final url = 'https://raw.githubusercontent.com/lakuapik/jadwalsholatorg/master/adzan/yogyakarta/${tahun}/${bulan}.json';
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result = json.decode(response.body).cast<Map<String, dynamic>>();
      _data = result.map<JadwalModel>((json) => JadwalModel.fromJson(json)).toList();
      print("PRINT_CEK_RESULT : $result");
      return _data;
    } else {
      throw Exception();
    }
  }
}