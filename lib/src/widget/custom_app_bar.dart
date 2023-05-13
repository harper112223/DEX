import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool? centerTitle;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final bool hideBackButton;
  final String title;
  final Function()? backButtonOnTab;
  final List<Widget>? actions;

  CustomAppBar({
    Key? key,
    this.backgroundColor,
    this.backButtonOnTab,
    this.height = 55.0,
    this.hideBackButton = false,
    this.textColor = Colors.black,
    required this.title,
    this.actions,
    this.centerTitle = true,
  })  : preferredSize = Size.fromHeight(height!),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      automaticallyImplyLeading: false,
      actions: widget.actions,
      elevation: 0.0,
      backgroundColor: widget.backgroundColor ?? theme.canvasColor,
      centerTitle: widget.centerTitle,
      leading: widget.hideBackButton
          ? Container()
          : IconButton(
              onPressed: widget.backButtonOnTab ?? () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                color: widget.textColor?.withOpacity(0.6),
              ),
            ),
      title: Text(
        widget.title,
        style: TextStyle(
          color: widget.textColor ?? theme.colorScheme.onSurface,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
