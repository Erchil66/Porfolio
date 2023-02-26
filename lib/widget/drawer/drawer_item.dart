import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/widget/widget.dart';

class DrawerItem extends StatelessWidget {
  final Function()? pressSelect;
  final String? labelText;

  const DrawerItem({super.key, this.pressSelect, this.labelText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressSelect,
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        //width: 50.5.w,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GeneralSans(
            label: labelText ?? "",
            fontColor: ColorsPort.darkColor,
            fontSize: 28.sp,
          ),
        ),
      ),
    );
  }
}
