import 'package:flutter/material.dart';
import 'package:merchant_app/gen/colors.gen.dart';

class XenioSearch extends StatelessWidget {
  final TextEditingController controller;
  final double? height;
  final double? width;
  final String hintText;
  final Function()? onEditingComplete;
  const XenioSearch({
    Key? key,
    required this.controller,
    this.height,
    this.width,
    this.hintText = "Search for...",
    this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      height: height ?? size.height * 0.06,
      width: width ?? size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: ColorName.primaryRed,
      ),
      child: TextFormField(
        onEditingComplete: onEditingComplete,
        textInputAction: TextInputAction.search,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white70,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
          focusColor: ColorName.primaryRed,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: ColorName.primaryRed,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: theme.textTheme.caption!.copyWith(
            color: Colors.white70,
          ),
          border: OutlineInputBorder(
            gapPadding: 0.0,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
