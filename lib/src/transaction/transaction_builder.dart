import 'package:flutter/material.dart';
import 'package:merchant_app/core/utils/string_extenstion_method.dart';
import 'package:merchant_app/gen/colors.gen.dart';

class TransactionBuilder extends StatelessWidget {
  final String leadingText;
  final Widget? leading;
  final String title;
  final String description;
  final String? subTitle;
  final String? helperText;
  final Widget? button;
  final bool isNegative;

  final String amount;
  final Function()? onTap;

  const TransactionBuilder({
    Key? key,
    required this.leadingText,
    required this.title,
    required this.description,
    required this.amount,
    this.onTap,
    this.subTitle,
    this.helperText,
    this.leading,
    this.button,
    this.isNegative = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Column(
      children: [
        const SizedBox(height: 4.0),
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: theme.cardColor,
                      child: leading ??
                          Text(
                            leadingText.capitalize(),
                            style: const TextStyle(
                              color: ColorName.primaryRed,
                            ),
                          )),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title.capitalize(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                          letterSpacing: 0.75,
                        ),
                      ),
                      Text(
                        description,
                        style: theme.textTheme.bodyText2!.copyWith(
                          letterSpacing: 0.75,
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                      if (subTitle != null)
                        Text(
                          subTitle!,
                          style: theme.textTheme.bodyText2!.copyWith(
                            letterSpacing: 0.75,
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      if (helperText != null)
                        Text(
                          helperText!,
                          style: theme.textTheme.bodyText2!.copyWith(
                            letterSpacing: 0.75,
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      if (button != null) button!
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 3.0),
                    child: Text(
                      amount,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: (amount.contains('-') || isNegative)
                            ? Colors.red
                            : Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 3.0),
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.16,
            right: size.width * 0.02,
          ),
          child: Divider(
            thickness: 1.75,
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
