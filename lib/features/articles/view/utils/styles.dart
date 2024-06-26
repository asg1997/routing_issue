import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_fonts.dart';
import 'package:flutter/material.dart';

class Styles {
  Styles._();
  static final bodyText =
      AppFonts.regular15.copyWith(color: AppColors.secondary, height: 24 / 14);
  static final bodyTextBold =
      AppFonts.medium15.copyWith(color: AppColors.secondary, height: 24 / 14);
  static final bodyTextGold = AppFonts.regular15
      .copyWith(color: const Color(0xFFBDA58E), height: 24 / 14);
  static final title = AppFonts.regular18.copyWith(
    color: AppColors.secondary,
    decoration: TextDecoration.underline,
    height: 24 / 18,
  );
}
