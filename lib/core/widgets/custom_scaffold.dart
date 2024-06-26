import 'package:fa_piano/core/utils/consts/app_colors.dart';
import 'package:fa_piano/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomScaffold extends ConsumerWidget {
  const CustomScaffold({
    required this.body,
    this.onCloseTapped,
    this.bgColor = AppColors.bg,
    this.appBar,
    this.resizeToAvoidBottomInset = true,
    this.roundBottomCorners = true,
    super.key,
  });
  final Widget body;
  final Widget? appBar;
  final Color bgColor;

  final void Function()? onCloseTapped;
  final bool resizeToAvoidBottomInset;
  final bool roundBottomCorners;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: AppColors.secondary,
      body: Column(
        children: [
          if (appBar != null) appBar!,
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: roundBottomCorners
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      )
                    : null,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      if (onCloseTapped != null) ...[
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 20),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: CloseButtonWidget(
                              color: AppColors.secondary,
                              onTap: () => Navigator.pop(context),
                            ),
                          ),
                        ),
                      ],
                      Expanded(child: body),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
