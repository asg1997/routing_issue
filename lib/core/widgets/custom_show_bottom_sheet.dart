import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/utils/consts/app_fonts.dart';
import 'package:flutter/material.dart';

void showCustomBottomModalSheet(
  BuildContext context, {
  required Widget child,
  String title = '',
  EdgeInsets? contentPadding,
}) =>
    showModalBottomSheet<void>(
      context: context,
      elevation: 0,
      backgroundColor: AppColors.bg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        const defaultPadding = EdgeInsets.symmetric(
          horizontal: 16,
        );
        return SafeArea(
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SizedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 25),
                        // ЗАГОЛОВОК
                        Padding(
                          padding: defaultPadding,
                          child: Text(title, style: AppFonts.regular27),
                        ),
                        const SizedBox(height: 20),
                        // ТЕЛО
                        Padding(
                          padding: contentPadding ?? defaultPadding,
                          child: child,
                        ),
                      ],
                    ),
                  ),
                  // // ЗНАЧОК СЛАЙДА
                  // Positioned(
                  //   top: 8,
                  //   child: Center(
                  //     child: Container(
                  //       width: 48,
                  //       height: 4,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(4),
                  //         color: const Color(0xff3C3C41),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
