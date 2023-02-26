import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constant/constant.dart';
import '../../../global/global.dart';
import '../../../widget/widget.dart';

class HomeMob extends ConsumerStatefulWidget {
  const HomeMob({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeMobState();
}

class _HomeMobState extends ConsumerState<HomeMob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 55,
      ),
      child: Column(
        children: [
          40.verticalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomGeneralSans(
                label1: "!",
                label2: "Hello",
                fontSize: 44.spMax,
                bold: true,
                decreaseLineHeight: true,
              ),
              35.verticalSpace,
              CustomGeneralSans(
                decreaseLineHeight: true,
                isFirstletter: true,
                label1: "am ",
                label2: "Erchil",
                fontSize: 44.spMax,
                bold: true,
              ),
              20.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 12.h,
                    width: 32.w,
                    decoration: const BoxDecoration(
                      color: ColorsPort.orangeColor,
                    ),
                  ),
                  15.horizontalSpace,
                  Expanded(
                    child: GeneralSans(
                      align: TextAlign.left,
                      label: "Flutter Developer / Figma (IOS/Android)",
                      fontSize: 16.spMax,
                    ),
                  ),
                ],
              ),
              65.verticalSpace,
              SizedBox(
                height: ScreenUtil().setHeight(265),
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse('https://github.com/Erchil66'));
                        },
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          // height: ScreenUtil().setHeight(106.52),
                          // width: ScreenUtil().setWidth(106.52),
                          width: 106.52.spMax,
                          height: 106.52.spMax,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorsPort.darkColor,
                          ),
                          child: Center(
                            child: Image.asset(
                              AssetOwnImages.github,
                              // width: ScreenUtil().setWidth(63),
                              // height: ScreenUtil().setHeight(63),
                              width: 63.spMax,
                              height: 63.spMax,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 60,
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://www.facebook.com/allen.chil/'));
                        },
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          // height: ScreenUtil().setHeight(64.95),
                          // width: ScreenUtil().setWidth(64.95),
                          height: 64.95.spMax,
                          width: 64.95.spMax,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorsPort.darkColor,
                          ),
                          child: Center(
                            child: Image.asset(
                              AssetOwnImages.facebook,
                              // width: ScreenUtil().setWidth(38.32),
                              // height: ScreenUtil().setHeight(38.32),
                              height: 38.32.spMax,
                              width: 38.32.spMax,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 22.73,
                      top: 125,
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://www.linkedin.com/in/erchil-amad-55b5b3168/'));
                        },
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          // height: ScreenUtil().setHeight(139.64),
                          // width: ScreenUtil().setWidth(139.64),
                          height: 139.64.spMax,
                          width: 139.64.spMax,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorsPort.primaryColor,
                          ),
                          child: Center(
                            child: Image.asset(
                              AssetOwnImages.linkedin,
                              // width: ScreenUtil().setWidth(64.07),
                              // height: ScreenUtil().setHeight(54.56),
                              height: 64.07.spMax,
                              width: 54.56.spMax,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          // 100.verticalSpace,
          Padding(
            padding: const EdgeInsets.only(
              top: 125,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: GeneralSans(
                    label: "About me",
                    fontSize: 44.spMax,
                    bold: true,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 371.spMax,
                        child: GeneralSans(
                          align: TextAlign.justify,
                          label:
                              "Hi! There, Am Erchil a Flutter Developer I’ve been doing flutter for almost 3 years. I have work in teams for various start-ups and help them launching their prototype apps and mvp apps need for market productions. As For Figma, I design mock-ups for IOS and Android.",
                          fontSize: 12.spMax,
                        ),
                      ),
                      15.verticalSpace,
                      SizedBox(
                        width: 371.spMax,
                        child: CustomGeneralSans(
                          label1Color: ColorsPort.orangeColor,
                          label1: " yes.",
                          label2:
                              "Still, I choose flutter as fit for me as cross platformapp and if i question for the next few years doi still use flutter, As i say",
                          fontSize: 12.spMax,
                        ),
                      ),
                      25.verticalSpace,
                      SizedBox(
                        width: 183.spMax,
                        height: 40.spMax,
                        child: ElevatedButton(
                            onPressed: () {
                              ref
                                  .read(globalFunction.notifier)
                                  .getHttpDownloadPDF();
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                backgroundColor: ColorsPort.primaryColor),
                            child: Center(
                              child: GeneralSans(
                                label: "Download CV",
                                fontColor: ColorsPort.whiteColor,
                                fontSize: 16.spMax,
                                bold: true,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
