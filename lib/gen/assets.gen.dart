/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/open_sans.ttf
  String get openSans => 'assets/fonts/open_sans.ttf';

  /// List of all assets
  List<String> get values => [openSans];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/card.jpeg
  AssetGenImage get card => const AssetGenImage('assets/images/card.jpeg');

  /// File path: assets/images/cashin.png
  AssetGenImage get cashin => const AssetGenImage('assets/images/cashin.png');

  /// File path: assets/images/cashout.png
  AssetGenImage get cashout => const AssetGenImage('assets/images/cashout.png');

  /// File path: assets/images/dashboard.png
  AssetGenImage get dashboard =>
      const AssetGenImage('assets/images/dashboard.png');

  /// File path: assets/images/dashboard_curve.png
  AssetGenImage get dashboardCurve =>
      const AssetGenImage('assets/images/dashboard_curve.png');

  /// File path: assets/images/help_center.png
  AssetGenImage get helpCenter =>
      const AssetGenImage('assets/images/help_center.png');

  /// File path: assets/images/logostripe.png
  AssetGenImage get logostripe =>
      const AssetGenImage('assets/images/logostripe.png');

  /// File path: assets/images/logout.png
  AssetGenImage get logout => const AssetGenImage('assets/images/logout.png');

  /// File path: assets/images/merchantlogo.png
  AssetGenImage get merchantlogo =>
      const AssetGenImage('assets/images/merchantlogo.png');

  /// File path: assets/images/scan.png
  AssetGenImage get scan => const AssetGenImage('assets/images/scan.png');

  /// File path: assets/images/scanner_img.png
  AssetGenImage get scannerImg =>
      const AssetGenImage('assets/images/scanner_img.png');

  /// File path: assets/images/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/images/settings.png');

  /// File path: assets/images/stripepayment.png
  AssetGenImage get stripepayment =>
      const AssetGenImage('assets/images/stripepayment.png');

  /// File path: assets/images/tap.jpeg
  AssetGenImage get tap => const AssetGenImage('assets/images/tap.jpeg');

  /// File path: assets/images/transactions.png
  AssetGenImage get transactions =>
      const AssetGenImage('assets/images/transactions.png');

  /// File path: assets/images/whitelogo.png
  AssetGenImage get whitelogo =>
      const AssetGenImage('assets/images/whitelogo.png');

  /// File path: assets/images/x_merchant_pos.jpeg
  AssetGenImage get xMerchantPos =>
      const AssetGenImage('assets/images/x_merchant_pos.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [
        card,
        cashin,
        cashout,
        dashboard,
        dashboardCurve,
        helpCenter,
        logostripe,
        logout,
        merchantlogo,
        scan,
        scannerImg,
        settings,
        stripepayment,
        tap,
        transactions,
        whitelogo,
        xMerchantPos
      ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/loading.json
  String get loading => 'assets/lottie/loading.json';

  /// File path: assets/lottie/payment_failed.json
  String get paymentFailed => 'assets/lottie/payment_failed.json';

  /// List of all assets
  List<String> get values => [loading, paymentFailed];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
