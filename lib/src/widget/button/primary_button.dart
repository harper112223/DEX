import 'package:flutter/material.dart';
import 'package:merchant_app/gen/colors.gen.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final Function()? onTap;
  final double? height;
  final double? width;
  final Widget? image;
  final Color color;
  final Color textColor;
  final FontWeight fontWeight;
  final double borderWidth;
  final Color borderColor;
  final double borderRadius;
  const PrimaryButton({
    Key? key,
    @required this.text,
    @required this.onTap,
    this.color = ColorName.primaryRed,
    this.height,
    this.width,
    this.fontWeight = FontWeight.w400,
    this.textColor = Colors.white,
    this.borderWidth = 0.0,
    this.borderColor = Colors.transparent,
    this.borderRadius = 12.0,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? size.height * 0.06,
        width: width ?? size.width,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        alignment: Alignment.center,
        child: image != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  image!,
                  SizedBox(width: size.width * 0.04),
                  Text(
                    text!,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: fontWeight,
                    ),
                  ),
                ],
              )
            : Text(
                text!,
                style: TextStyle(
                  color: textColor,
                  fontWeight: fontWeight,
                ),
              ),
      ),
    );
  }
}
