import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/constant.dart';
import '../../global/global.dart';
import '../../widget/widget.dart';

class TabletScreen extends ConsumerStatefulWidget {
  const TabletScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabletScreenState();
}

class _TabletScreenState extends ConsumerState<TabletScreen> {
  onTapUser(int? count) {
    ref.read(navSelection.notifier).state = count!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPort.lightGreyColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(172),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 59),
          child: SizedBox(
            child: Row(
              children: [
                Image.asset(
                  AssetOwnImages.logo,
                  height: 55.r,
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
                  currentIndex: 0,
                  onTap: (count) {
                    onTapUser(count);
                  },
                  items: [
                    BottomIndicatorNavigationBarItem(
                        icon: "Home", count: 0, showBadge: false),
                    BottomIndicatorNavigationBarItem(
                        icon: "Experience", count: 0, showBadge: false),
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
    );
  }
}
