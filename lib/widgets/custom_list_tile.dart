import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Text? title;
  final Text? subTitle;
  final Function? onTap;
  final Function? onLongPress;
  final Function? onDoubleTap;
  final Widget? trailing;
  final Color? tileColor;

  const CustomListTile({
    Key? key,
    this.leading,
    this.title,
    this.subTitle,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.trailing,
    this.tileColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: tileColor,
      child: InkWell(
        onTap: () => onTap,
        onDoubleTap: () => onDoubleTap,
        onLongPress: () => onLongPress,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: leading,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title ?? const SizedBox(),
                  const SizedBox(height: 10),
                  subTitle ?? const SizedBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: trailing,
            )
          ],
        ),
      ),
    );
  }
}
