import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:merchant_app/gen/colors.gen.dart';

class SecondaryTextFormField extends StatefulWidget {
  final Color defaultColor;
  final Color focusColor;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final String labelText;
  final String? hintText;
  final bool isRequired;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final int maxLength;
  final bool readOnly;
  final bool obscureText;
  final int maxLines;
  final Function(String)? onChanged;

  const SecondaryTextFormField({
    Key? key,
    required this.textEditingController,
    this.maxLength = 400,
    this.maxLines = 1,
    this.inputFormatters = const [],
    this.onChanged,
    this.validator,
    this.defaultColor = Colors.grey,
    this.focusColor = Colors.purple,
    this.isRequired = false,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.hintText,
    required this.labelText,
    this.obscureText = false,
  }) : super(key: key);
  @override
  State<SecondaryTextFormField> createState() => _SecondaryTextFormFieldState();
}

class _SecondaryTextFormFieldState extends State<SecondaryTextFormField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Color colorText = Theme.of(context).colorScheme.onSurface.withOpacity(0.8);
    return Focus(
      onFocusChange: (hasFocus) {
        // When you focus on input text,
        // you need to notify the color change into the widget.
        setState(() =>
            colorText = hasFocus ? widget.focusColor : widget.defaultColor);
      },
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        obscureText: widget.obscureText,
        maxLines: widget.maxLines,
        readOnly: widget.readOnly,
        focusNode: widget.focusNode,
        style: textTheme.bodyText2!.copyWith(color: colorText),
        controller: widget.textEditingController,
        onChanged: widget.onChanged,
        buildCounter: (
          context, {
          required currentLength,
          maxLength,
          required isFocused,
        }) =>
            null,
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: "${widget.labelText} ${widget.isRequired ? "*" : ""}",
          labelStyle: textTheme.bodyText2!.copyWith(color: colorText),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: ColorName.primaryRed,
            ),
          ),
        ),
      ),
    );
  }
}
