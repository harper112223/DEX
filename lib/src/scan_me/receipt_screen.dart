// ignore_for_file: depend_on_referenced_packages

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:merchant_app/core/app_configs/screen_name.dart';
import 'package:merchant_app/core/model/pos_sale/pos_sale_model.dart';
import 'package:merchant_app/gen/colors.gen.dart';
import 'package:merchant_app/src/widget/custom_app_bar.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'package:printing/printing.dart';

class ReceiptScreen extends StatefulWidget {
  final PosSaleModel posSellModel;
  final String amount;
  final String receiptType;
  final String currency;
  const ReceiptScreen({
    Key? key,
    required this.posSellModel,
    required this.amount,
    required this.currency,
    this.receiptType = 'Sell',
  }) : super(key: key);

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        backButtonOnTab: () {
          Navigator.of(context).pushReplacementNamed(ScreenNames.homeScreen);
        },
        title: "Receipt",
        backgroundColor: ColorName.primaryRed,
        textColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 4.0),
            CachedNetworkImage(
              imageUrl: widget.posSellModel.data?.merchantLogo ?? '',
              height: size.height * 0.08,
            ),
            const SizedBox(height: 2.0),
            Center(
              child: Text(
                (widget.posSellModel.data?.merchantName ?? '')
                    .replaceAll('    ', ' '),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Text(
                '${widget.posSellModel.data?.merchantAddress?.address ?? ''} ${widget.posSellModel.data?.merchantAddress?.city ?? ''} ${widget.posSellModel.data?.merchantAddress?.state ?? ''} ${widget.posSellModel.data?.merchantAddress?.country ?? ''} ${widget.posSellModel.data?.merchantAddress?.zip ?? ''}'
                    .replaceAll('    ', ' '),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              alignment: Alignment.center,
              color: Colors.grey,
              height: 1.75,
              width: size.width * 0.75,
            ),
            const SizedBox(height: 8.0),
            _listBuilder(
              size: size,
              title: 'Date Time',
              description: '${widget.posSellModel.data?.date ?? ''}',
            ),
            _listBuilder(
              size: size,
              title: 'merchant Id',
              description: widget.posSellModel.data?.merchantId ?? '',
            ),
            _listBuilder(
              size: size,
              title: 'card Type',
              description: widget.posSellModel.data?.cardType ?? '',
            ),
            _listBuilder(
              size: size,
              title: 'merchant Name',
              description: widget.posSellModel.data?.merchantName ?? '',
            ),
            _listBuilder(
              size: size,
              title: 'name On Card',
              description: widget.posSellModel.data?.nameOnCard ?? '',
            ),
            _listBuilder(
              size: size,
              title: 'transaction Id',
              description: widget.posSellModel.data?.transactionId ?? '',
            ),
            _listBuilder(
              size: size,
              title: 'card Masked',
              description: widget.posSellModel.data?.cardMasked ?? '',
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Text(
                widget.receiptType,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${widget.currency} ${widget.amount}',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.06),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: size.height * 0.065,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => _generatePdf(
                  size: size,
                  isMerchantCopy: true,
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.065,
                  color: ColorName.primaryRed,
                  child: const Text(
                    'Merchant Copy',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 1,
              height: size.height * 0.065,
              color: Colors.white,
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => _generatePdf(size: size),
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.065,
                  color: ColorName.primaryRed,
                  child: const Text(
                    'Customer Copy',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _listBuilder({
    required Size size,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          const Text(":"),
          const SizedBox(width: 12.0),
          Expanded(
            flex: 3,
            child: Text(
              description == '' ? 'NA' : description.toUpperCase(),
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  pw.Widget _pwlistBuilder({
    required Size size,
    required String title,
    required String description,
    required pw.Font? font,
  }) {
    return pw.Center(
      child: pw.Padding(
        padding: const pw.EdgeInsets.symmetric(vertical: 0.0),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.center,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Expanded(
              child: pw.Text(
                title.toUpperCase(),
                style: pw.TextStyle(
                  font: font,
                  fontSize: 4.5,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            pw.SizedBox(width: 4.0),
            pw.Text(":"),
            pw.SizedBox(width: 4.0),
            pw.Expanded(
              flex: 3,
              child: pw.Text(
                description == '' ? 'NA' : description.toUpperCase(),
                style: pw.TextStyle(
                  fontSize: 9.5,
                  fontWeight: pw.FontWeight.normal,
                  font: font,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _generatePdf({
    required Size size,
    bool isMerchantCopy = false,
  }) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    final font = await PdfGoogleFonts.openSansLight();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.roll57,
        build: (context) {
          return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Center(
                child: pw.Text(
                  (widget.posSellModel.data?.merchantName ?? '')
                      .replaceAll('    ', ' '),
                  textAlign: pw.TextAlign.center,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 12,
                  ),
                ),
              ),
              pw.Center(
                child: pw.Text(
                  '${widget.posSellModel.data?.merchantAddress?.address ?? ''} ${widget.posSellModel.data?.merchantAddress?.city ?? ''} ${widget.posSellModel.data?.merchantAddress?.state ?? ''} ${widget.posSellModel.data?.merchantAddress?.country ?? ''} ${widget.posSellModel.data?.merchantAddress?.zip ?? ''}'
                      .replaceAll('    ', ' '),
                  textAlign: pw.TextAlign.center,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 8,
                  ),
                ),
              ),
              pw.SizedBox(height: 2.0),
              pw.Container(
                alignment: pw.Alignment.center,
                height: 1.75,
                width: size.width,
                child: pw.Text('--------------------------------'),
              ),
              pw.SizedBox(height: 8.0),
              _pwlistBuilder(
                size: size,
                title: 'Date Time',
                description: '${widget.posSellModel.data?.date ?? ''}',
                font: font,
              ),
              _pwlistBuilder(
                size: size,
                title: 'merchant Id',
                description: widget.posSellModel.data?.merchantId ?? '',
                font: font,
              ),
              _pwlistBuilder(
                size: size,
                title: 'card Type',
                description: widget.posSellModel.data?.cardType ?? '',
                font: font,
              ),
              _pwlistBuilder(
                size: size,
                title: 'merchant Name',
                description: widget.posSellModel.data?.merchantName ?? '',
                font: font,
              ),
              _pwlistBuilder(
                size: size,
                title: 'transaction Id',
                description: widget.posSellModel.data?.transactionId ?? '',
                font: font,
              ),
              _pwlistBuilder(
                size: size,
                title: 'card Masked',
                description: widget.posSellModel.data?.cardMasked ?? '',
                font: font,
              ),
              _pwlistBuilder(
                size: size,
                title: 'name On Card',
                description: widget.posSellModel.data?.nameOnCard ?? '',
                font: font,
              ),
              pw.SizedBox(height: 6.0),
              pw.Center(
                child: pw.Text(
                  widget.receiptType,
                  style: const pw.TextStyle(fontSize: 8.0),
                ),
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(
                    'TOTAL',
                    style: const pw.TextStyle(fontSize: 16.0),
                  ),
                  pw.Text(
                    '${widget.currency} ${widget.amount}',
                    style: const pw.TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              if (isMerchantCopy) ...[
                pw.SizedBox(height: 8.0),
                pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(top: 3.0),
                      child: pw.Text(
                        'Sign',
                        style: const pw.TextStyle(fontSize: 10.0),
                      ),
                    ),
                    pw.SizedBox(width: 6.0),
                    pw.Container(
                      alignment: pw.Alignment.center,
                      height: 1.75,
                      width: 100,
                      child: pw.Text('________________________________'),
                    ),
                  ],
                ),
              ],
              pw.SizedBox(height: 10.0),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(horizontal: 4.0),
                child: pw.Text(
                  widget.posSellModel.data?.disclaimer ?? '',
                  textAlign: pw.TextAlign.center,
                  style: const pw.TextStyle(fontSize: 6.0),
                ),
              ),
              pw.SizedBox(height: 6.0),
              pw.Center(
                child: pw.Text(
                  '***** ${isMerchantCopy ? 'MERCHANT' : 'CUSTOMER'} COPY *****',
                  textAlign: pw.TextAlign.center,
                  style: const pw.TextStyle(fontSize: 8.0),
                ),
              ),
              pw.SizedBox(height: 2.0),
              pw.Center(
                child: pw.Text(
                  'THANK YOU',
                  textAlign: pw.TextAlign.center,
                  style: const pw.TextStyle(fontSize: 8.0),
                ),
              ),
              pw.SizedBox(height: 14.0),
            ],
          );
        },
      ),
    );

    final res = await pdf.save();
    await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => res);
  }
}
