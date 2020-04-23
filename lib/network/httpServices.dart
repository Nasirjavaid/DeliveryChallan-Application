import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../config/appConstants.dart';

class HttpService {
  HttpService._internal();
  factory HttpService() {
    return _instance;
  }
  static final HttpService _instance = HttpService._internal();
  String _authToken;
  Map<String, String> getRequestHeaders() {
    return {'Authorization': 'Bearer $_authToken'};
  }

  Future<http.Response> get(String endPoint) {
    try {
      String url = APIConstants.API_BASE_URL + endPoint;
      print("_get: $url");
      return http.get(url);
    } catch (ex) {
      print("Calling from Http with this exception $ex");
    }
  }

  Future<http.Response> post(
      String endPoint, Map<String, String> header, Map<String, dynamic> data) {
    String url = APIConstants.API_BASE_URL + endPoint;
    return http.post(url,
        headers: header, body: data, encoding: Encoding.getByName("utf-8"));
  }

  Map<String, dynamic> _convertJsonToMap(String response) {
    return json.decode(response);
  }

  // static List<SmDeliveryChallan> parseSMDeliveryChallanJsonAndGetItemsList(itemsJson)
  // {

  //     List<SmDeliveryChallan> itemsList = new List<SmDeliveryChallan>.from(itemsJson);
  //     return itemsList;

  // }
}
