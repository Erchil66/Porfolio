import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/constant.dart';

import '../widget.dart';

class DialogCustom {
  static dialogTemplateSucess({
    BuildContext? context,
    String? message,
    String? svgIcon,
    Function()? press,
  }) {
    showGeneralDialog(
        context: context!,
        barrierColor: const Color(0xFF1A1919).withOpacity(0.3),
        barrierDismissible: true,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 360),
        transitionBuilder: (c, a, s, ch) {
          return Transform.scale(
            scale: a.value,
            child: Opacity(
              opacity: a.value,
              child: Dialog(
                // elevation: 1,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: 299.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(46.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image.asset(
                              //   svgIcon ?? Asset.warning,
                              //   height: 74.h,
                              // ),
                              // 18.verticalSpace,
                              GeneralSans(
                                label: message ?? "",
                                fontSize: 20.sp,
                                fontColor: ColorsPort.darkColor,
                                align: TextAlign.center,
                                bold: true,
                              ),
                              28.verticalSpace,
                              SizedBox(
                                width: ScreenUtil().setWidth(161),
                                height: ScreenUtil().setHeight(36),
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
                                      label: "Close",
                                      fontColor: ColorsPort.whiteColor,
                                      fontSize: 16.sp,
                                      bold: true,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
        pageBuilder: (c, r, x0) {
          return const SizedBox.shrink();
        });
  }
}
