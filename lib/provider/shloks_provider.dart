import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../modal/shloks_modal.dart';

class GeetaProvider extends ChangeNotifier {
  List<GeetaModal> geetaModalList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/shloks.json');
    List response = jsonDecode(json);
    geetaModalList = response
        .map(
          (e) => GeetaModal.fromJson(e),
        )
        .toList();
    notifyListeners();
  }

  GeetaProvider(){
    jsonParsing();
  }
}
