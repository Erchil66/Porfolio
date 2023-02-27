import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/constant.dart';
import '../../../global/global.dart';
import '../../../widget/widget.dart';

class ContactMob extends ConsumerStatefulWidget {
  const ContactMob({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactMobState();
}

class _ContactMobState extends ConsumerState<ContactMob> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(globalFunction);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomGeneralSans(
            label1: "touch",
            label2: "Get in ",
            fontSize: 38.spMax,
            bold: true,
          ),
          50.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AssetOwnImages.livein,
                height: 20.spMax,
                width: 20.spMax,
              ),
              20.horizontalSpace,
              Expanded(
                child: GeneralSans(
                  label:
                      "Villa Apura Visayan Village Tagum City, 8100 ,Davao Del Norte,Mindanao , Philipphines",
                  fontSize: 16.spMax,
                  align: TextAlign.left,
                  medium: true,
                ),
              )
            ],
          ),
          50.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AssetOwnImages.mobile,
                height: 20.spMax,
                width: 20.spMax,
              ),
              20.horizontalSpace,
              GeneralSans(
                label: "(+63) 9303 77 2046",
                fontSize: 16.spMax,
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
                height: 20.spMax,
                width: 20.spMax,
              ),
              20.horizontalSpace,
              GeneralSans(
                label: "0848072549",
                fontSize: 16.spMax,
                medium: true,
              )
            ],
          ),
          50.verticalSpace,
          GeneralSans(
            label: "Note:",
            fontSize: 16.spMax,
            medium: true,
            fontColor: ColorsPort.primaryColor,
          ),
          GeneralSans(
            label:
                "For the time being, I am only able to accept part-time/freelance work for 25-30 hours per week.",
            fontSize: 16.spMax,
            medium: true,
            align: TextAlign.left,
            fontColor: ColorsPort.orangeColor,
          ),
          25.verticalSpace,
          const Divider(),
          25.verticalSpace,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 43.spMax,
            child: TextFormField(
              controller: controller.emailSender,
              cursorColor: ColorsPort.primaryColor,
              style: TextStyle(
                color: ColorsPort.darkColor,
                fontFamily: CustomFont.bold,
                fontWeight: FontWeight.w700,
                fontSize: 16.spMax,
              ),
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                  color: ColorsPort.darkColor.withOpacity(0.4),
                  fontFamily: CustomFont.medium,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.spMax,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
          25.verticalSpace,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 43.spMax,
            child: TextFormField(
              controller: controller.subject,
              cursorColor: ColorsPort.primaryColor,
              style: TextStyle(
                color: ColorsPort.darkColor,
                fontFamily: CustomFont.bold,
                fontWeight: FontWeight.w700,
                fontSize: 16.spMax,
              ),
              decoration: InputDecoration(
                hintText: "Subject (Optional)",
                hintStyle: TextStyle(
                  color: ColorsPort.darkColor.withOpacity(0.4),
                  fontFamily: CustomFont.medium,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.spMax,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
          25.verticalSpace,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 43.spMax,
            child: TextFormField(
              controller: controller.name,
              cursorColor: ColorsPort.primaryColor,
              style: TextStyle(
                color: ColorsPort.darkColor,
                fontFamily: CustomFont.bold,
                fontWeight: FontWeight.w700,
                fontSize: 16.spMax,
              ),
              decoration: InputDecoration(
                hintText: "Name",
                hintStyle: TextStyle(
                  color: ColorsPort.darkColor.withOpacity(0.4),
                  fontFamily: CustomFont.medium,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.spMax,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
          25.verticalSpace,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 73.spMax,
            child: TextFormField(
              controller: controller.message,
              cursorColor: ColorsPort.primaryColor,
              style: TextStyle(
                color: ColorsPort.darkColor,
                fontFamily: CustomFont.bold,
                fontWeight: FontWeight.w700,
                fontSize: 16.spMax,
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "Message",
                hintStyle: TextStyle(
                  color: ColorsPort.darkColor.withOpacity(0.4),
                  fontFamily: CustomFont.medium,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.spMax,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
          25.verticalSpace,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 40.spMax,
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
                  fontSize: 16.spMax,
                  bold: true,
                ),
              ),
            ),
          ),
          25.verticalSpace,
          controller.showError == false && controller.messageSuccess == false
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
                      : const SizedBox.shrink(),
          150.verticalSpace,
        ],
      ),
    );
  }
}
