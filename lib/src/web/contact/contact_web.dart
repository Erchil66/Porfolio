import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/global/global.dart';

import '../../../widget/widget.dart';

class ContactWeb extends ConsumerStatefulWidget {
  const ContactWeb({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactWebState();
}

class _ContactWebState extends ConsumerState<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(globalFunction);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomGeneralSans(
            label1: "touch",
            label2: "Get in ",
            fontSize: 48.sp,
            bold: true,
          ),
          ScreenUtil().setVerticalSpacingFromWidth(50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(454),
                        height: ScreenUtil().setHeight(63),
                        child: TextFormField(
                          controller: controller.emailSender,
                          cursorColor: ColorsPort.primaryColor,
                          style: TextStyle(
                            color: ColorsPort.darkColor,
                            fontFamily: CustomFont.bold,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                          ),
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: ColorsPort.darkColor.withOpacity(0.4),
                              fontFamily: CustomFont.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 25),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: ColorsPort.whiteColor,
                          ),
                        ),
                      ),
                      ScreenUtil().setVerticalSpacingFromWidth(25),
                      SizedBox(
                        width: ScreenUtil().setWidth(454),
                        height: ScreenUtil().setHeight(63),
                        child: TextFormField(
                          controller: controller.subject,
                          cursorColor: ColorsPort.primaryColor,
                          style: TextStyle(
                            color: ColorsPort.darkColor,
                            fontFamily: CustomFont.bold,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                          ),
                          decoration: InputDecoration(
                            hintText: "Subject (Optional)",
                            hintStyle: TextStyle(
                              color: ColorsPort.darkColor.withOpacity(0.4),
                              fontFamily: CustomFont.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 25),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: ColorsPort.whiteColor,
                          ),
                        ),
                      ),
                      ScreenUtil().setVerticalSpacingFromWidth(25),
                      SizedBox(
                        width: ScreenUtil().setWidth(454),
                        height: ScreenUtil().setHeight(63),
                        child: TextFormField(
                          controller: controller.name,
                          cursorColor: ColorsPort.primaryColor,
                          style: TextStyle(
                            color: ColorsPort.darkColor,
                            fontFamily: CustomFont.bold,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                          ),
                          decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(
                              color: ColorsPort.darkColor.withOpacity(0.4),
                              fontFamily: CustomFont.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 25),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: ColorsPort.whiteColor,
                          ),
                        ),
                      ),
                      ScreenUtil().setVerticalSpacingFromWidth(25),
                      SizedBox(
                        width: ScreenUtil().setWidth(454),
                        height: ScreenUtil().setHeight(201),
                        child: TextFormField(
                          controller: controller.message,
                          cursorColor: ColorsPort.primaryColor,
                          style: TextStyle(
                            color: ColorsPort.darkColor,
                            fontFamily: CustomFont.bold,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                          ),
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: "Message\n\n\n\n\n",
                            hintStyle: TextStyle(
                              color: ColorsPort.darkColor.withOpacity(0.4),
                              fontFamily: CustomFont.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 25),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: ColorsPort.whiteColor,
                          ),
                        ),
                      ),
                      ScreenUtil().setVerticalSpacingFromWidth(25),
                      SizedBox(
                        width: ScreenUtil().setWidth(183),
                        height: ScreenUtil().setHeight(40),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.sendEmail();
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              backgroundColor: ColorsPort.primaryColor),
                          child: Center(
                            child: GeneralSans(
                              label: "Send",
                              fontColor: ColorsPort.whiteColor,
                              fontSize: 16.sp,
                              bold: true,
                            ),
                          ),
                        ),
                      ),
                      ScreenUtil().setVerticalSpacingFromWidth(25),
                      controller.showError == false &&
                              controller.messageSuccess == false
                          ? const SizedBox.shrink()
                          : controller.showError == true &&
                                  controller.messageSuccess == false
                              ? GeneralSans(
                                  label: "Please fill up email/name/message",
                                  fontColor: ColorsPort.orangeColor,
                                  fontSize: 16.sp,
                                  bold: true,
                                )
                              : controller.showError == false &&
                                      controller.messageSuccess == true
                                  ? GeneralSans(
                                      label: "Send Success",
                                      fontColor: ColorsPort.orangeColor,
                                      fontSize: 16.sp,
                                      bold: true,
                                    )
                                  : const SizedBox.shrink()
                    ],
                  ),
                ),
              ),
              ScreenUtil().setHorizontalSpacing(90),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetOwnImages.livein,
                          height: ScreenUtil().setHeight(40),
                          width: ScreenUtil().setWidth(40),
                        ),
                        ScreenUtil().setHorizontalSpacing(20),
                        GeneralSans(
                          label:
                              "Villa Apura Visayan Village Tagum City, 8100 ,Davao Del Norte,Mindanao , Philipphines",
                          fontSize: 16.sp,
                          align: TextAlign.left,
                          medium: true,
                        )
                      ],
                    ),
                    50.verticalSpace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetOwnImages.mobile,
                          height: ScreenUtil().setHeight(40),
                          width: ScreenUtil().setWidth(40),
                        ),
                        ScreenUtil().setHorizontalSpacing(20),
                        GeneralSans(
                          label: "(+63) 9303 77 2046",
                          fontSize: 16.sp,
                          medium: true,
                        )
                      ],
                    ),
                    50.verticalSpace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetOwnImages.tel,
                          height: ScreenUtil().setHeight(40),
                          width: ScreenUtil().setWidth(40),
                        ),
                        ScreenUtil().setHorizontalSpacing(20),
                        GeneralSans(
                          label: "0848072549",
                          fontSize: 16.sp,
                          medium: true,
                        )
                      ],
                    ),
                    ScreenUtil().setVerticalSpacingFromWidth(50),
                    GeneralSans(
                      label: "Note:",
                      fontSize: 16.sp,
                      medium: true,
                      fontColor: ColorsPort.primaryColor,
                    ),
                    GeneralSans(
                      label:
                          "For the time being, I am only able to accept part-time/freelance work for 25-30 hours per week.",
                      fontSize: 16.sp,
                      medium: true,
                      align: TextAlign.left,
                      fontColor: ColorsPort.orangeColor,
                    ),
                    ScreenUtil().setVerticalSpacingFromWidth(80),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
