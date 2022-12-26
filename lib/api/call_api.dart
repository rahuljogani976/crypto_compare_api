import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class ApiHandler {

  getDataAsParams(data) async {
    print("rahul");
    var baseUrl = Uri.https('min-api.cryptocompare.com/data/pricemultifull',data);
    print(baseUrl);
    print("baseUrl");
    return await http.get(
        baseUrl,
        headers: _setHeaders()
    );
  }
  _setHeaders()=> <String, String>{
    'Content-type' : 'application/json',
  };
}


