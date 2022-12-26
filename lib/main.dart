import 'package:crypto_compare_api/coin_list_page.dart';
import 'package:crypto_compare_api/provider/coin_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChainDataProvider()),
      ],
      child: MaterialApp(
        title: 'Crypto Compare App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CoinListPage(),
      ),
    );
  }
}

