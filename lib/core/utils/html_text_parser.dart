import 'package:flutter/material.dart';

class HtmlText extends StatelessWidget {
  const HtmlText({Key? key, required this.htmlText}) : super(key: key);

  final String htmlText;

  String parseHtmlString(String htmlString) {
    RegExp boldPattern = RegExp(r'<b>(.*?)</b>');
    RegExp italicPattern = RegExp(r'<i>(.*?)</i>');
    RegExp anchorPattern = RegExp(r'<a href="(.*?)">(.*?)</a>');

    htmlString = htmlString.replaceAllMapped(boldPattern, (match) {
      return '<strong>${match.group(1)}</strong>';
    });

    htmlString = htmlString.replaceAllMapped(italicPattern, (match) {
      return '<em>${match.group(1)}</em>';
    });

    htmlString = htmlString.replaceAllMapped(anchorPattern, (match) {
      String href = match.group(1) ?? '';
      String text = match.group(2) ?? '';
      return '<a href="$href">$text</a>';
    });

    return htmlString;
  }

  @override
  Widget build(BuildContext context) {
    htmlText.splitMapJoin("");


    return const Placeholder();
  }
}
