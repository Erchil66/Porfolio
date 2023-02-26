import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/constant.dart';
import '../../../widget/widget.dart';

class ServiceMob extends ConsumerStatefulWidget {
  const ServiceMob({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ServiceMobState();
}

class _ServiceMobState extends ConsumerState<ServiceMob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MediaQuery.of(context).size.width.horizontalSpace,
          CustomGeneralSans(
            label1: "r",
            label2: "Service i Offe",
            fontSize: 38.spMax,
            bold: true,
          ),
          GeneralSans(
            label:
                "I'm not perfect, but I will strive to be good and be the best version of myself.",
            fontColor: ColorsPort.darkColor,
            fontSize: 16.spMax,
          ),
          45.verticalSpace,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.asset(
                  AssetOwnImages.appDev,
                  // height: ScreenUtil().setHeight(160),
                  // width: ScreenUtil().setWidth(160),
                  height: 160.spMax,
                  width: 160.spMax,
                ),
                25.verticalSpace,
                CustomGeneralSans(
                  isFirstletter: true,
                  label1: "App ",
                  label2: "Development",
                  fontSize: 22.spMax,
                  bold: true,
                ),
                ScreenUtil().setVerticalSpacingFromWidth(25),
                GeneralSans(
                  label:
                      "For the time being, I am capable of developing Android apps, but I am looking forward to getting my own Mac to create IOS apps. Currently, I am using a company-provided Mac, which has limited multitasking capabilities due to its tracking software. Once I acquire my own Mac, I will be able to fully explore the wonders of IOS app testing. However, at the moment, I am only able to accept part-time work as I am already employed full-time.",
                  fontSize: 18.spMax,
                  medium: true,
                  align: TextAlign.justify,
                ),
              ],
            ),
          ),
          65.verticalSpace,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.asset(
                  AssetOwnImages.uiux,
                  // height: ScreenUtil().setHeight(160),
                  // width: ScreenUtil().setWidth(160),
                  height: 160.spMax,
                  width: 160.spMax,
                ),
                ScreenUtil().setVerticalSpacingFromWidth(25),
                CustomGeneralSans(
                  isFirstletter: true,
                  label1: "Fig",
                  label2: "ma Design (IOS/Android)",
                  fontSize: 22.spMax,
                  bold: true,
                ),
                ScreenUtil().setVerticalSpacingFromWidth(25),
                GeneralSans(
                  label:
                      "While my primary focus of work is on Flutter development, I also possess the ability to create designing mock-ups for UI/UX. I acquired this skill by learning Figma as my primary tool for designing. Additionally, I began exploring Adobe Illustrator, an AI tool that enables me to design logos, brochures, and vectors as a hobby. Despite this, I am always open to UI/UX projects and welcome any requests for assistance in this area.",
                  fontSize: 18.spMax,
                  medium: true,
                  align: TextAlign.justify,
                ),
              ],
            ),
          ),
          65.verticalSpace,
        ],
      ),
    );
  }
}
