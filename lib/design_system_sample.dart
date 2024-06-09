//https://medium.com/@mregnauld/how-to-implement-your-design-system-in-a-flutter-app-1-2-d2e21b5fcffd
//https://medium.com/@mregnauld/how-to-implement-your-design-system-in-a-flutter-app-2-2-c3327109d869

import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  // final TextStyle textStyle;
  // final Color color;
  final TextAlign textAlign;
  final TextOverflow? textOverflow;

  const AppText._internal(
    this.text, {
    super.key,
    // required this.textStyle,
    // required this.color,
    this.textAlign = TextAlign.start,
    this.textOverflow,
  });

  factory AppText.labelBigEmphasis(
    String text, {
    Key? key,
    required BuildContext context,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
  }) =>
      AppText._internal(
        text,
        key: key,
        // textStyle: Theme.of(context).appTexts.labelBigEmphasis,
        // color: color ?? Theme.of(context).appColors.textDefault,
        textAlign: textAlign ?? TextAlign.start,
        textOverflow: textOverflow,
      );

  factory AppText.labelDefaultEmphasis(
    String text, {
    Key? key,
    required BuildContext context,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
  }) =>
      AppText._internal(
        text,
        key: key,
        // textStyle: Theme.of(context).appTexts.labelDefaultEmphasis,
        // color: color ?? Theme.of(context).appColors.textDefault,
        textAlign: textAlign ?? TextAlign.start,
        textOverflow: textOverflow,
      );

  // add more factories according to your needs

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      // style: textStyle.copyWith(color: color),
    );
  }
}

//AppText.labelDefaultEmphasis("My text example", context: context),