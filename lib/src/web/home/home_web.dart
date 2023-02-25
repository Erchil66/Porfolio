import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/widget/widget.dart';

class HomeWeb extends ConsumerStatefulWidget {
  const HomeWeb({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeWebState();
}

class _HomeWebState extends ConsumerState<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 60,
        horizontal: 95,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomGeneralSans(
                  label1: "!",
                  label2: "Hello",
                  fontSize: 64.sp,
                  bold: true,
                  decreaseLineHeight: true,
                ),
                35.verticalSpace,
                CustomGeneralSans(
                  decreaseLineHeight: true,
                  isFirstletter: true,
                  label1: "am ",
                  label2: "Erchil",
                  fontSize: 64.sp,
                  bold: true,
                ),
                20.verticalSpace,
                Row(
                  children: [
                    Container(
                      height: 12.h,
                      width: 12.w,
                      decoration: const BoxDecoration(
                        color: ColorsPort.orangeColor,
                      ),
                    ),
                    5.horizontalSpace,
                    GeneralSans(
                      label: "Flutter Developer / Figma (IOS/Android)",
                      fontSize: 16.sp,
                    )
                  ],
                ),
                65.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(
                    left: 29,
                  ),
                  child: SizedBox(
                    height: ScreenUtil().setHeight(265),
                    width: ScreenUtil().setWidth(213.69),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            height: ScreenUtil().setHeight(106.52),
                            width: ScreenUtil().setWidth(106.52),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsPort.darkColor,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                AssetOwnImages.github,
                                width: ScreenUtil().setWidth(63),
                                height: ScreenUtil().setHeight(63),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 60,
                          child: Container(
                            height: ScreenUtil().setHeight(64.95),
                            width: ScreenUtil().setWidth(64.95),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsPort.darkColor,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                AssetOwnImages.facebook,
                                width: ScreenUtil().setWidth(38.32),
                                height: ScreenUtil().setHeight(38.32),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          left: 22.73,
                          top: 125,
                          child: Container(
                            height: ScreenUtil().setHeight(139.64),
                            width: ScreenUtil().setWidth(139.64),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsPort.primaryColor,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                AssetOwnImages.linkedin,
                                width: ScreenUtil().setWidth(64.07),
                                height: ScreenUtil().setHeight(54.56),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            300.horizontalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: GeneralSans(
                    label: "About me",
                    fontSize: 64.sp,
                    bold: true,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: ScreenUtil().setWidth(371),
                      child: GeneralSans(
                        align: TextAlign.left,
                        label:
                            "       Hi! There, Am Erchil a Flutter Developer I’ve been doing flutter for almost 3 years. I have work in teams for various start-ups and help them launching their prototype apps and mvp apps need for market productions. As For Figma, I design mock-ups for IOS and Android.",
                        fontSize: 18.sp,
                      ),
                    ),
                    15.verticalSpace,
                    SizedBox(
                      width: ScreenUtil().setWidth(371),
                      child: CustomGeneralSans(
                        label1Color: ColorsPort.orangeColor,
                        label1: " yes.",
                        label2:
                            "Still, I choose flutter as fit for me as cross platformapp and if i question for the next few years doi still use flutter, As i say",
                        fontSize: 18.sp,
                      ),
                    ),
                    25.verticalSpace,
                    SizedBox(
                      width: ScreenUtil().setWidth(183),
                      height: ScreenUtil().setHeight(40),
                      child: ElevatedButton(
                          onPressed: () {},
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
                              fontSize: 16.sp,
                              bold: true,
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
