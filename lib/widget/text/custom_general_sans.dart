import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/constant.dart';

class CustomGeneralSans extends StatelessWidget {
  final String? label1, label2;
  final bool? medium, semiBold, bold, decreaseLineHeight, isFirstletter;
  final double? fontSize;
  final Color? fontColor;

  const CustomGeneralSans(
      {super.key,
      this.label1,
      this.label2,
      this.medium,
      this.semiBold,
      this.bold,
      this.decreaseLineHeight,
      this.isFirstletter,
      this.fontSize,
      this.fontColor});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        isFirstletter == true
            ? TextSpan(
                text: label1,
                style: TextStyle(
                  height:
                      decreaseLineHeight == false || decreaseLineHeight == null
                          ? null
                          : 0.5,
                  color: ColorsPort.primaryColor,
                  fontFamily: bold == true
                      ? CustomFont.bold
                      : medium == true
                          ? CustomFont.medium
                          : semiBold == true
                              ? CustomFont.semiBold
                              : CustomFont.regular,
                  fontWeight: bold == true
                      ? FontWeight.w700
                      : medium == true
                          ? FontWeight.w500
                          : semiBold == true
                              ? FontWeight.w600
                              : FontWeight.w400,
                  fontSize: fontSize ?? 15.sp,
                ),
              )
            : const TextSpan(),
        TextSpan(
          text: label2,
          style: TextStyle(
            height: decreaseLineHeight == false || decreaseLineHeight == null
                ? null
                : 0.5,
            color: fontColor ?? ColorsPort.darkColor,
            fontFamily: bold == true
                ? CustomFont.bold
                : medium == true
                    ? CustomFont.medium
                    : semiBold == true
                        ? CustomFont.semiBold
                        : CustomFont.regular,
            fontWeight: bold == true
                ? FontWeight.w700
                : medium == true
                    ? FontWeight.w500
                    : semiBold == true
                        ? FontWeight.w600
                        : FontWeight.w400,
            fontSize: fontSize ?? 15.sp,
          ),
        ),
        TextSpan(
          text: label1,
          style: TextStyle(
            height: decreaseLineHeight == false || decreaseLineHeight == null
                ? null
                : 0.5,
            color: ColorsPort.primaryColor,
            fontFamily: bold == true
                ? CustomFont.bold
                : medium == true
                    ? CustomFont.medium
                    : semiBold == true
                        ? CustomFont.semiBold
                        : CustomFont.regular,
            fontWeight: bold == true
                ? FontWeight.w700
                : medium == true
                    ? FontWeight.w500
                    : semiBold == true
                        ? FontWeight.w600
                        : FontWeight.w400,
            fontSize: fontSize ?? 15.sp,
          ),
        ),
      ]),
    );
  }
}
