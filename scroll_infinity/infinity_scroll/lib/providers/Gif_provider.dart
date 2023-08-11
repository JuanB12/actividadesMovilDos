import 'dart:convert';
// import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:infinity_scroll/models/Modelo.dart';

class GifProvider {
  final url = Uri.parse(
      'https://api.giphy.com/v1/gifs/trending?api_key=081Z33Gf8OaNbdK1upYCzUqPGG90MimV&limit=500&rating=g');

  Future<List<Modelo>> getGifs() async {
    final resp = await http.get(url);
    if (resp.statusCode == 200) {
      // final List newItems = json.decode(response.body);
      String body = utf8.decode(resp.bodyBytes);
      final jsonList = jsonDecode(body);
      final gifs = Gifs.fromJson(jsonList);
      return gifs.items;
    } else {
      throw Exception('Error');
    }
  }
}
