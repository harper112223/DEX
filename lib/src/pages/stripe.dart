import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:merchant_app/core/constants/constants.dart';
import 'package:merchant_app/core/error/custom_error.dart';
import 'package:merchant_app/core/model/currency/currency_model.dart';
import 'package:merchant_app/core/model/scan_me/card_scan_response_model.dart';
import 'package:merchant_app/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/assets.gen.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/main.dart';
import 'package:merchant_app/src/pages/config.dart';
import 'package:merchant_app/src/pages/example_scaffold.dart';
import 'package:merchant_app/src/pages/loading_button.dart';
import 'package:merchant_app/src/pages/stripe_screen.dart';
import 'package:merchant_app/src/widget/button/primary_button.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';

import '../home/home_screen.dart';

class PaymentSheetScreen extends StatefulWidget {
  @override
  _PaymentSheetScreenState createState() => _PaymentSheetScreenState();
}

class _PaymentSheetScreenState extends State<PaymentSheetScreen> {
  int step = 0;
  final TextEditingController _amountController = TextEditingController();
  CardScanResponse? _cardScanResponse;
  List<CurrencyData>? currency = [];
  String _selectedCurrency = "USD";
  String secretKey = '';

  String stripePublishKey = '';
  String paymentIntentId = '';

  void initState() {
    getCurrencies();
    getKeys();
    super.initState();
  }

  Future<void> getKeys() async {
    try {
      final Dio _dio = Dio();
      dynamic res = await _dio.get(
        '${Constants.baseURL}getposkey',
        options: Options(
          headers: {'stripeuniquekey': Constants.stripeUniqueKey},
        ),
      );
      dynamic result = jsonDecode(res.data);
      print(result);
      stripePublishKey = result['stripePublishableKey'];
      secretKey = result['stripeSecretKey'];
      Stripe.publishableKey = stripePublishKey;
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<void> getCurrencies() async {
    try {
      final Dio _dio = Dio();
      dynamic res = await _dio.get(
        '${Constants.baseURL}getcurrency',
      );
      dynamic result = jsonDecode(res.data);

      CurrencyModel model = CurrencyModel.fromJson(result);
      model.data!.forEach((cur) {
        currency?.add(cur);
      });
      CurrencyData newData = CurrencyData(name: "US Dollar", code: "USD");
      currency!.add(newData);

      CurrencyData inr = CurrencyData(name: "Indian Ruppee", code: "INR");
      currency!.add(inr);
      setState(() {});
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _theme = Theme.of(context);
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorName.primaryRed,
            ColorName.primaryRed,
          ],
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Card Payments',
              textColor: Colors.white,
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: size.height * 0.08),
            const Text(
              "BILL AMOUNT?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButtonFormField<CurrencyData>(
                        dropdownColor: ColorName.primaryRed,
                        items: currency!.map<DropdownMenuItem<CurrencyData>>(
                            (CurrencyData value) {
                          return DropdownMenuItem<CurrencyData>(
                            value: value,
                            child: Text(
                              "${value.code}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: _theme.colorScheme.onSecondary,
                                      fontSize: 22),
                            ),
                          );
                        }).toList(),
                        onChanged: (CurrencyData? newValue) {
                          setState(() {
                            _selectedCurrency = newValue!.code!;
                            print(_selectedCurrency);
                          });
                        },
                        hint: Text(
                          "USD",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: _theme.colorScheme.onSecondary,
                                  fontSize: 22),
                        ),
                        decoration: InputDecoration.collapsed(hintText: ''),
                        iconEnabledColor: _theme.colorScheme.onSecondary,
                        iconDisabledColor: _theme.colorScheme.onSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "0.0",
                          hintStyle: TextStyle(color: Colors.white)),
                      autofocus: true,
                      cursorColor: ColorName.primaryRed,
                      controller: _amountController,
                      inputFormatters: [
                        FilteringTextInputFormatter(
                          RegExp(r'^\d+\.?\d{0,2}'),
                          allow: true,
                        )
                      ],
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1.0),
            Container(
              width: size.width,
              height: 2.0,
              color: Colors.white.withOpacity(0.4),
            ),
            SizedBox(height: size.height * 0.1),
            Container(
              child: const Text(
                "Powered By",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 45, right: 45),
              child: Image.asset('assets/images/logostripe.png'),
            ),
            SizedBox(height: size.height * 0.2),
            PrimaryButton(
              color: Colors.white,
              textColor: Colors.black,
              fontWeight: FontWeight.w500,
              borderRadius: 25.0,
              text: "PROCEED",
              onTap: () {
                if (_amountController.text.isNotEmpty) {
                  int amount = int.parse(_amountController.text);
                  amount = amount * 100;
                  initPaymentSheet(amount.toString(), _selectedCurrency);
                } else {
                  'Enter valid amount'.showSnackBar(context);
                }
              },
            ),
          ],
        ),
      ),
    ));
  }

  Future<Map<String, dynamic>> _createTestPaymentSheet(
      String amount, String currency) async {
    const url = 'https://api.stripe.com/v1/payment_intents';
    final Dio _dio = Dio();
    final email = await MySharedPreferences().getStringValue(Constants.email);
    final token = await MySharedPreferences().getStringValue(Constants.token);

    Map<String, String> formData = {
      'currency': currency,
      'amount': amount,
      'payment_method_types[]': 'card',
      'metadata[email]': email,
      'metadata[token]': token,
      'metadata[amount]': amount,
      'metadata[currency]': currency,
      'metadata[stripesecretkey]': secretKey,
    };

    final response = await _dio.post(url,
        options:
            Options(contentType: 'application/x-www-form-urlencoded', headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${secretKey}',
          HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded'
        }),
        data: formData);

    final body = json.decode(response.toString());
    if (body['error'] != null) {
      throw Exception(body['error']);
    }
    return body;
  }

  Future<void> initPaymentSheet(String amount, String currency) async {
    try {
      // 1. create payment intent on the server

      final email = await MySharedPreferences().getStringValue(Constants.email);
      final data = await _createTestPaymentSheet(amount, currency);
      paymentIntentId = data['id'];
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          // Main params
          paymentIntentClientSecret: data['client_secret'],
          merchantDisplayName: email,
          style: ThemeMode.dark,
          appearance: const PaymentSheetAppearance(
            colors: PaymentSheetAppearanceColors(
              background: Colors.white,
              primary: Colors.blue,
              componentBorder: Colors.red,
            ),
            shapes: PaymentSheetShape(
              shadow: PaymentSheetShadowParams(color: Colors.red),
            ),
            primaryButton: PaymentSheetPrimaryButtonAppearance(
              shapes: PaymentSheetPrimaryButtonShape(blurRadius: 8),
              colors: PaymentSheetPrimaryButtonTheme(
                light: PaymentSheetPrimaryButtonThemeColors(
                  background: Color.fromARGB(255, 231, 235, 30),
                  text: Color.fromARGB(255, 235, 92, 30),
                  border: Color.fromARGB(255, 235, 92, 30),
                ),
              ),
            ),
          ),
        ),
      );

      await confirmPayment(amount, currency);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
      rethrow;
    }
  }

  Future<void> storeTransaction(String amount, String currency) async {
    try {
      final Dio _dio = Dio();
      final email = await MySharedPreferences().getStringValue(Constants.email);
      final token = await MySharedPreferences().getStringValue(Constants.token);
      final ewalletId =
          await MySharedPreferences().getStringValue(Constants.ewalletId);
      final userId = await MySharedPreferences().getIntValue(Constants.userId);
      dynamic res = await _dio.post('${Constants.baseURL}stripepay',
          options: Options(
            headers: {
              'API-KEY': Constants.apiKey,
              'token': token,
              'email': email,
              'ewalletid': ewalletId,
              'user_id': userId.toString()
            },
          ),
          data: {
            'amount': amount,
            'currency': currency,
            'stripetxnid': paymentIntentId
          });
      dynamic result = jsonDecode(res.data);
      print(result);
    } on DioError catch (e) {
      throw CustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }

  Future<void> confirmPayment(String amount, String currency) async {
    try {
      await Stripe.instance.presentPaymentSheet();
      await storeTransaction(amount, currency);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Payment succesfully completed'),
        ),
      );
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomeScreen()),
          (route) => false);
    } on Exception catch (e) {
      if (e is StripeException) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Terminal Error: ${e.error.localizedMessage}'),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Unforeseen error: ${e}'),
          ),
        );
      }
    }
  }
}
