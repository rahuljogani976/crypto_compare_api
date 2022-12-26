import 'dart:convert';

import 'package:crypto_compare_api/api/call_api.dart';
import 'package:crypto_compare_api/model/price_model.dart';
import 'package:flutter/material.dart';

class ChainDataProvider with ChangeNotifier {

  List<PriceMultiModel> priceMultiList = [];
  bool isPriceMultiLoading = false;


  getPriceMultiDetails(data) async {
    print("hdwbjhkdejhkf");
    isPriceMultiLoading = true;
    priceMultiList.clear();
    notifyListeners();

    List<PriceMultiModel> list;

    var response = await ApiHandler().getDataAsParams(data);
    //print("fgffgdgfdfgdgdgfg"+response.body);
    print(response);

    var body = json.decode(response.body);

    print('checkBody>$body');


    if (response.statusCode == 200) {
      var result = body;

      List client = result as List;
      list = client.map<PriceMultiModel>((json) =>
          PriceMultiModel.fromJson(json)).toList();


      priceMultiList.addAll(list);


      isPriceMultiLoading = false;
      notifyListeners();
    }
    else {
      isPriceMultiLoading = false;
      print("Price Report Api Error !!");
      notifyListeners();
    }
  }


}
