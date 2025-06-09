import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sismoney/integrations/requests/contracts/api_contract.dart';

class HttpRequest implements ApiContract {
  Map<String, String>? headers;
  String? baseUri;

  HttpRequest({this.headers, this.baseUri});

  @override
  Future<http.Response> post({required String url, Map<String, dynamic>? body}) async {
    return await http.post(
      Uri.parse(baseUri! + url),
      headers: headers,
      body: body != null ? jsonEncode(body) : null,
    );
  }

  @override
  Future<http.Response> get({required String url}) async {
    return await http.get(Uri.parse(baseUri! + url), headers: headers);
  }

  @override
  void setHeaders({required headers}) {
    this.headers = headers;
  }

  @override
  void setBaseUri({required String baseUri}) {
    this.baseUri = baseUri;
  }
}