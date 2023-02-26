import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constant/constant.dart';
import '../../../widget/widget.dart';

class ExpMob extends ConsumerStatefulWidget {
  const ExpMob({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExpMobState();
}

class _ExpMobState extends ConsumerState<ExpMob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Column(
        children: [
          CustomGeneralSans(
            label1: "s",
            label2: "Deployed project",
            fontSize: 38.spMax,
            bold: true,
          ),
          GeneralSans(
            label: "Soon will be added for now only this i can show.",
            fontColor: ColorsPort.darkColor,
            fontSize: 16.spMax,
          ),
          80.verticalSpace,
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: ColorsPort.whiteColor,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 15,
                    spreadRadius: 0,
                    color: ColorsPort.darkColor.withOpacity(0.2),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AssetOwnImages.btq,
                    width: MediaQuery.of(context).size.width,
                    height: 220.spMax,
                    fit: BoxFit.cover,
                  ),
                  ScreenUtil().setVerticalSpacingFromWidth(25),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomGeneralSans(
                          isFirstletter: true,
                          label1: "B",
                          label2: "etter Cliniq",
                          fontSize: 20.spMax,
                          bold: true,
                        ),
                        ScreenUtil().setVerticalSpacingFromWidth(15),
                        GeneralSans(
                          label:
                              "Bettercliniq app mobile as to grow you practice, reduce your workload and build deeper relationship with your patients.",
                          fontSize: 12.spMax,
                          align: TextAlign.left,
                        ),
                        ScreenUtil().setVerticalSpacingFromWidth(25),
                        GeneralSans(
                          label: "Available in:",
                          fontSize: 15.spMax,
                          align: TextAlign.left,
                          bold: true,
                        ),
                        ScreenUtil().setVerticalSpacingFromWidth(15),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                launchUrl(Uri.parse(
                                    'https://play.google.com/store/apps/details?id=co.bettercliniq.app&hl=en_US&gl=US'));
                              },
                              behavior: HitTestBehavior.translucent,
                              child: Image.asset(
                                AssetOwnImages.playstore,
                                // width: ScreenUtil().setWidth(35),
                                // height: ScreenUtil().setHeight(45),
                                width: 35.spMax,
                                height: 45.spMax,
                              ),
                            ),
                            ScreenUtil().setHorizontalSpacing(15),
                            GestureDetector(
                              onTap: () {
                                launchUrl(Uri.parse(
                                    'https://apps.apple.com/us/app/bettercliniq/id1604739707'));
                              },
                              behavior: HitTestBehavior.translucent,
                              child: Image.asset(
                                AssetOwnImages.appstore,
                                width: 35.spMax,
                                height: 45.spMax,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          40.verticalSpace,
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: ColorsPort.whiteColor,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 15,
                    spreadRadius: 0,
                    color: ColorsPort.darkColor.withOpacity(0.2),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AssetOwnImages.wib,
                    width: MediaQuery.of(context).size.width,
                    height: 220.spMax,
                    fit: BoxFit.cover,
                  ),
                  ScreenUtil().setVerticalSpacingFromWidth(25),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomGeneralSans(
                          isFirstletter: true,
                          label1: "W",
                          label2: "hen in Baguio",
                          fontSize: 20.spMax,
                          bold: true,
                        ),
                        ScreenUtil().setVerticalSpacingFromWidth(15),
                        GeneralSans(
                          label:
                              "When In Baguio Eat is a food delivery service to showcase Baguio’s iconic and unique food choices. We aim to help small businesses and citizens adapt to the new normal.",
                          fontSize: 12.spMax,
                          align: TextAlign.left,
                        ),
                        ScreenUtil().setVerticalSpacingFromWidth(25),
                        GeneralSans(
                          label: "Available in: philippines",
                          fontSize: 15.spMax,
                          align: TextAlign.left,
                          bold: true,
                        ),
                        ScreenUtil().setVerticalSpacingFromWidth(15),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                launchUrl(Uri.parse(
                                    'https://play.google.com/store/apps/details?id=com.wheninbaguio.consumer'));
                                launchUrl(Uri.parse(
                                    'https://play.google.com/store/apps/details?id=com.wheninbaguio.rider'));
                                launchUrl(Uri.parse(
                                    'https://play.google.com/store/apps/details?id=com.wheninbaguio.merchant'));
                              },
                              behavior: HitTestBehavior.translucent,
                              child: Image.asset(
                                AssetOwnImages.playstore,
                                width: 35.spMax,
                                height: 45.spMax,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
