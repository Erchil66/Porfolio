import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/src/web/web.dart';
import 'package:portfolio/widget/widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../global/global.dart';

class WebScreen extends ConsumerStatefulWidget {
  const WebScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WebScreenState();
}

class _WebScreenState extends ConsumerState<WebScreen> {
  onTapUser(int? count) {
    ref.read(navSelection.notifier).state = count!;
  }

  final List<Widget> pages = const <Widget>[HomeWeb(), ExpWeb(), ContactWeb()];

  @override
  void initState() {
    listentoScroll();

    //ref.read(globalFunction.notifier).init();
    super.initState();
  }

  listentoScroll() {
    ref
        .read(globalFunction.notifier)
        .itemPositionsListener
        .itemPositions
        .addListener(() {
      final indexes = ref
          .read(globalFunction.notifier)
          .itemPositionsListener
          .itemPositions
          .value
          .map((e) => e.index)
          .toList();

      if (indexes.length == 1) {
        onTapUser(indexes.first);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final global = ref.watch(globalFunction);
    final current = ref.watch(navSelection);
    return Scaffold(
      backgroundColor: ColorsPort.lightGreyColor,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(172),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 59),
          child: SizedBox(
            child: Row(
              children: [
                Image.asset(
                  AssetOwnImages.logo,
                  height: ScreenUtil().setHeight(55),
                  width: ScreenUtil().setWidth(55),
                ),
                10.horizontalSpace,
                CustomGeneralSans(
                  isFirstletter: false,
                  label1: "o",
                  label2: "Porfoli",
                  fontSize: 36.sp,
                  bold: true,
                ),
                const Spacer(),
                BottomIndicatorBar(
                  activeColor: ColorsPort.darkColor,
                  indicatorColor: ColorsPort.primaryColor,
                  inactiveColor: Colors.transparent,
                  shadow: false,
                  currentIndex: current,
                  onTap: (count) {
                    //onTapUser(count);
                    global.scrolltoPositon(count);
                  },
                  items: [
                    BottomIndicatorNavigationBarItem(
                        icon: "Home", count: 0, showBadge: false),
                    BottomIndicatorNavigationBarItem(
                        icon: "Projects", count: 0, showBadge: false),
                    BottomIndicatorNavigationBarItem(
                      icon: "Contact",
                      count: 0,
                      showBadge: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // Align(
          //   alignment: Alignment.center,
          //   child: SizedBox(
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height,
          //     child: Opacity(
          //       opacity: 0.3,
          //       child: Image.asset(
          //         AssetOwnImages.logo,
          //         fit: BoxFit.cover,
          //         alignment: const Alignment(0, -0.3),
          //       ),
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment.center,
            child: ScrollablePositionedList.builder(
              itemScrollController: global.itemScrollController,
              itemPositionsListener: global.itemPositionsListener,
              physics: const BouncingScrollPhysics(),
              itemCount: pages.length,
              itemBuilder: (context, index) {
                final page = pages[index];
                return SafeArea(child: page);
              },
            ),
          ),
        ],
      ),
    );
  }
}
