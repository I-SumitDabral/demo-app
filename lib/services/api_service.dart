import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:spiderweb/constants/app_api.dart';

@lazySingleton
class ApiService {
  final http.Client _client = http.Client();

  Future<List<dynamic>?> get(String path) async {
    final response = await _client.get(geturi(path));
    if (response.statusCode == 200) {
      final parsedResponse = json.decode(response.body);
      return parsedResponse;
    }
    return null;
  }

  Uri geturi(String path) {
    return Uri.parse(AppApi.baseUrl + path);
  }
}
