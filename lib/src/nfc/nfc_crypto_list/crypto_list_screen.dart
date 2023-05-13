import 'dart:convert';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/nfc/card_pin/scan_card.dart';

import 'package:merchant_app/src/nfc/nfc_crypto_list/cubit/crypto_list_cubit.dart';
import 'package:merchant_app/src/nfc/nfc_crypto_list/model/crypto_list_model.dart';
import 'package:merchant_app/src/nfc/nfc_reading/nfc_read_screen.dart';
import 'package:merchant_app/src/pages/loading_screen.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';
import 'package:nfc_manager/nfc_manager.dart';

class CryptoListScreen extends StatefulWidget {
  final String amount;
  final String currency;
  final String type;
  const CryptoListScreen({
    Key? key,
    required this.amount,
    required this.type,
    required this.currency,
  }) : super(key: key);

  @override
  CryptoListScreenList createState() => CryptoListScreenList();
}

class CryptoListScreenList extends State<CryptoListScreen> {

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CryptoListCubit>().getCryptoList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        appBar: CustomAppBar(
            title: "Crypto", backgroundColor: ColorName.primaryRed,textColor: Colors.white,),
        resizeToAvoidBottomInset: false,
        body: BlocBuilder<CryptoListCubit, CryptoListState>(
          builder: (context, state) {
            if (state is CryptoListLoadingState) {
              return LoadingScreen();
            } else if (state is CryptoListErrorState) {
              return Container(
                child: Center(
                  child: Text(state.errorMessage),
                ),
              );
            } else if (state is CryptoListSuccesstate) {
              return successScreen(state.model);
            } else if (state is SearchResultLoaded){
              return searchScreen(state.allCrypto,state.searchResult);
            } else {
              return Container();
            }
          },
        ));
  }

  Widget searchScreen(List<Data>? data, List<Data>? searchResult){
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Container(
        padding: EdgeInsets.all(14),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 6,bottom: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                border: Border.all(color: Colors.black12)
            ),
            child: TextFormField(
              textInputAction: TextInputAction.search,
              onEditingComplete: (){
                context
                    .read<CryptoListCubit>()
                    .searchCrypto(
                    data,
                  _controller.text,
                );
              },
              controller: _controller,

              decoration: InputDecoration(
                fillColor: Color(0xffd5eef6),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.4),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
                focusColor: new Color(0xffd5eef6),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide:  BorderSide(
                    color: new Color(0xffd5eef6),
                    width: 1.5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'search',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),
                border: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
          Container(
              height: _size.height * 0.78,
              child: Card(
                  child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GridView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200, childAspectRatio: 1.4),
                              itemCount: searchResult!.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return GestureDetector(
                                    onTap: () {
                                      if (widget.type == 'nfc') {
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => NFCReadingScreen(
                                                amount: widget.amount,
                                                code: searchResult[index].id.toString(),
                                                currency: widget.currency)));
                                      } else {
                                        _scanQRCode(searchResult[index].id.toString());
                                      }
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.all(14),
                                        child: Card(
                                            color: ColorName.primaryRed,
                                            child: Container(
                                                padding: EdgeInsets.all(10),
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text(
                                                      searchResult[index].code.toString(),

                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w700,color: Colors.white),
                                                    ),
                                                  ],
                                                )))));
                              })
                        ],
                      )))),
        ]));
  }

  Widget successScreen(CryptoListModel model) {
    final _size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Container(
        padding: EdgeInsets.all(14),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 6,bottom: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                border: Border.all(color: Colors.black12)
            ),
            child: TextFormField(
              textInputAction: TextInputAction.search,
              onEditingComplete: (){
                context
                    .read<CryptoListCubit>()
                    .searchCrypto(
                    model.data,
                  _controller.text,
                );
              },
              controller: _controller,

              decoration: InputDecoration(
                fillColor: Color(0xffd5eef6),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.4),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
                focusColor: new Color(0xffd5eef6),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide:  BorderSide(
                    color: new Color(0xffd5eef6),
                    width: 1.5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'search',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),
                border: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
          Container(
              height: _size.height * 0.78,
              child: Card(
                  child: SingleChildScrollView(
                      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200, childAspectRatio: 1.4),
                      itemCount: model.data.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                            onTap: () {
                              if (widget.type == 'nfc') {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => NFCReadingScreen(
                                        amount: widget.amount,
                                        code: model.data[index].id.toString(),
                                        currency: widget.currency)));
                              } else {
                                _scanQRCode(model.data[index].id.toString());
                              }
                            },
                            child: Padding(
                                padding: EdgeInsets.all(14),
                                child: Card(
                                    color: ColorName.primaryRed,
                                    child: Container(
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              model.data[index].code.toString(),

                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,color: Colors.white),
                                            ),
                                          ],
                                        )))));
                      })
                ],
              )))),
        ]));
  }

  isNFC() async {
    dynamic isAvailable = await NfcManager.instance.isAvailable();
    print(isAvailable.toString());
    return isAvailable;
  }

  Future<void> _scanQRCode(String code) async {
    try {
      final ScanResult result = await BarcodeScanner.scan();
      if (result.type.name == 'Barcode') {
        Navigator.of(context).pushNamed(ScreenNames.cardPin,arguments : {'amount': widget.amount, 'currency': widget.currency, 'code': code, 'cardhash': result.rawContent.toString()});
      } else if (result.type.name == 'Cancelled') {
        // ignore: use_build_context_synchronously
        'Scanner cancelled'.showSnackBar(context);
      }

    } catch (e) {
      'Invalid card details'.showSnackBar(context);
    }
  }
}
