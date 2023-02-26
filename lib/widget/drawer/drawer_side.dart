import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/constant.dart';

import '../widget.dart';

class DrawerCustom extends StatelessWidget {
  final String? buildVersion, imageUrl, username;
  final Function()? homepress, history, prof, payment, logout;

  const DrawerCustom(
      {super.key,
      this.buildVersion,
      this.imageUrl,
      this.username,
      this.homepress,
      this.history,
      this.prof,
      this.payment,
      this.logout});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      width: MediaQuery.of(context).size.width * 50,
      backgroundColor: ColorsPort.lightGreyColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ScreenUtil().setVerticalSpacingFromWidth(50),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomGeneralSans(
              isFirstletter: false,
              label1: "o",
              label2: "Portfoli",
              fontSize: 32.spMax,
              bold: true,
            ),
          ),
          50.verticalSpace,
          DrawerItem(
            pressSelect: homepress,
            labelText: "Home",
          ),
          50.verticalSpace,
          DrawerItem(
            pressSelect: history,
            labelText: "Service",
          ),
          50.verticalSpace,
          DrawerItem(
            pressSelect: prof,
            labelText: "Projects",
          ),
          50.verticalSpace,
          DrawerItem(
            pressSelect: payment,
            labelText: "Contact",
          ),
          const Spacer(),
          DrawerItem(
            pressSelect: logout,
            labelText: "Close",
          ),
          30.verticalSpace,
        ],
      ),
    );
  }
}
