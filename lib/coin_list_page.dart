import 'package:crypto_compare_api/provider/coin_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoinListPage extends StatefulWidget {
  const CoinListPage({Key key}) : super(key: key);

  @override
  State<CoinListPage> createState() => _CoinListPageState();
}

class _CoinListPageState extends State<CoinListPage> {

  ChainDataProvider chainDataProvider;

  getCoinDetails() async {

    var data =
    {
      "fsyms": "BTC",
      "tsyms": "USD,EUR",
    };

    print("check->$data");


    await chainDataProvider.getPriceMultiDetails(data);

  }


  @override
  void initState() {
    super.initState();
    getCoinDetails();
    chainDataProvider = Provider.of<ChainDataProvider>(context, listen: false);

  }


  @override
  Widget build(BuildContext context) {

    chainDataProvider = Provider.of<ChainDataProvider>(context, listen: true);

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back,color: Colors.black,size: 28),
                  SizedBox(width: 15),
                  Text('CoinList Page',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16))
                ],
              ),
              
              SizedBox(height: height*0.015),

               Container(
                 height: height-95,
                 child: ListView.builder(
                   shrinkWrap: true,
                   itemCount: chainDataProvider.priceMultiList.length,
                   itemBuilder: (context,index){
                     print(chainDataProvider.priceMultiList.length);
                     return Column(
                       children: [
                         Container(
                           height: height*0.1,
                           width: width,
                           padding: EdgeInsets.all(15),
                           decoration: BoxDecoration(
                               color: Colors.blueGrey.withOpacity(0.5),
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(10)
                           ),
                           child: Text(
                               chainDataProvider.priceMultiList.length.toString(),
                             style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),
                           ),
                         ),
                         SizedBox(height: height*0.015),
                       ],
                     );
                   },
                 ),
               )

            ],
          ),
        ),
      ),
    ));
  }
}
