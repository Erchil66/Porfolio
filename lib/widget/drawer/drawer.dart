import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/global/global.dart';

import '../widget.dart';

class DashBoardDrawer extends ConsumerStatefulWidget {
  final Widget child;
  const DashBoardDrawer({required this.child, Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DashBoardDrawerState();
}

class _DashBoardDrawerState extends ConsumerState<DashBoardDrawer> {
  final GlobalKey<ScaffoldState> scaff = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: ColorsPort.lightGreyColor,
        key: scaff,
        extendBodyBehindAppBar: true,
        extendBody: true,
        resizeToAvoidBottomInset: true,
        // backgroundColor: Colors.white.withOpacity(0.19),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.h),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: 20,
                left: 20,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      log("CLICK");
                      scaff.currentState!.openDrawer();
                    },
                    child: Image.asset(
                      AssetOwnImages.menu,
                      width: ScreenUtil().setWidth(80),
                      height: ScreenUtil().setHeight(80),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      AssetOwnImages.logo,
                      width: ScreenUtil().setWidth(33),
                      height: ScreenUtil().setHeight(103),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        drawer: DrawerCustom(
          homepress: () {
            positionto(0);
          },
          history: () {
            positionto(1);
          },
          prof: () {
            positionto(2);
          },
          payment: () {
            positionto(3);
          },
          logout: () {
            scaff.currentState!.closeDrawer();
          },
        ),
        body: widget.child,
      ),
    );
  }

  positionto(int? count) {
    scaff.currentState!.closeDrawer();
    ref.read(globalFunction.notifier).scrolltoPositon(count);
  }
}
