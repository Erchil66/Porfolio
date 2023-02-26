import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/widget/text/custom_general_sans.dart';
import 'package:portfolio/widget/text/general_sans.dart';

import '../../../constant/constant.dart';

class ServiceOffer extends ConsumerStatefulWidget {
  const ServiceOffer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ServiceOfferState();
}

class _ServiceOfferState extends ConsumerState<ServiceOffer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 95),
      child: SizedBox(
        // height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MediaQuery.of(context).size.width.horizontalSpace,
            CustomGeneralSans(
              label1: "r",
              label2: "Service i Offe",
              fontSize: 48.sp,
              bold: true,
            ),
            GeneralSans(
              label:
                  "I'm not perfect, but I will strive to be good and be the best version of myself.",
              fontColor: ColorsPort.darkColor,
              fontSize: 16.sp,
            ),
            ScreenUtil().setVerticalSpacingFromWidth(45),
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: ScreenUtil().setWidth(380),
                      child: Column(
                        children: [
                          Image.asset(
                            AssetOwnImages.appDev,
                            height: ScreenUtil().setHeight(160),
                            width: ScreenUtil().setWidth(160),
                          ),
                          ScreenUtil().setVerticalSpacingFromWidth(25),
                          CustomGeneralSans(
                            isFirstletter: true,
                            label1: "App ",
                            label2: "Development",
                            fontSize: 22.sp,
                            bold: true,
                          ),
                          ScreenUtil().setVerticalSpacingFromWidth(25),
                          GeneralSans(
                            label:
                                "For the time being, I am capable of developing Android apps, but I am looking forward to getting my own Mac to create IOS apps. Currently, I am using a company-provided Mac, which has limited multitasking capabilities due to its tracking software. Once I acquire my own Mac, I will be able to fully explore the wonders of IOS app testing. However, at the moment, I am only able to accept part-time work as I am already employed full-time.",
                            fontSize: 18.sp,
                            medium: true,
                            align: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ScreenUtil().setHorizontalSpacing(150),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: ScreenUtil().setWidth(380),
                      child: Column(
                        children: [
                          Image.asset(
                            AssetOwnImages.uiux,
                            height: ScreenUtil().setHeight(160),
                            width: ScreenUtil().setWidth(160),
                          ),
                          ScreenUtil().setVerticalSpacingFromWidth(25),
                          CustomGeneralSans(
                            isFirstletter: true,
                            label1: "Fig",
                            label2: "ma Design (IOS/Android)",
                            fontSize: 22.sp,
                            bold: true,
                          ),
                          ScreenUtil().setVerticalSpacingFromWidth(25),
                          GeneralSans(
                            label:
                                "While my primary focus of work is on Flutter development, I also possess the ability to create designing mock-ups for UI/UX. I acquired this skill by learning Figma as my primary tool for designing. Additionally, I began exploring Adobe Illustrator, an AI tool that enables me to design logos, brochures, and vectors as a hobby. Despite this, I am always open to UI/UX projects and welcome any requests for assistance in this area.",
                            fontSize: 18.sp,
                            medium: true,
                            align: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
