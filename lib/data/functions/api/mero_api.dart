import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:mero_discount/static/Links/url.dart';

class MeroApi {
  get(String url) async {
    var response = await http.get(Uri.parse(baseUrl + url));
    log(response.body);
  }

  post(String url, Map body) async {
    var response = await http.post(Uri.parse(baseUrl + url),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(body));
    log(response.body);
  }
}

final MeroApi meroApi = MeroApi();
