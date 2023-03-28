import 'package:flutter/material.dart';

import '../text_style.dart';

informationText({
  required String text,
  TextAlign? textAlign = TextAlign.center,
}) {
  return Text(
    text,
    style: style,
    textAlign: textAlign,
  );
}
