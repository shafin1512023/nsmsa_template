import 'package:flutter/material.dart';
import 'package:nsmsa_template/utils/constants/n_constants.dart';

enum TextColor { primary, secondary, white, black }

class NText extends StatelessWidget {
  final String data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextColor color;
  final TextAlign? textAlign;

  const NText(
    this.data, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.color = TextColor.primary,
  });

  @override
  Widget build(BuildContext context) {
    Color textColor;

    switch (color) {
      case TextColor.primary:
        textColor = Theme.of(context).colorScheme.primary;
        break;
      case TextColor.secondary:
        textColor = Theme.of(context).colorScheme.secondary;
        break;
      case TextColor.white:
        textColor = NConstants.color.white;
        break;
      case TextColor.black:
        textColor = NConstants.color.black;
        break;
    }

    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize ?? NConstants.text.fontSize,
        fontFamily: NConstants.text.fontName,
        fontWeight: fontWeight,
      ),
    );
  }
}
