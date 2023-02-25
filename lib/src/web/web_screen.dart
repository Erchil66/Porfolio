import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:portfolio/widget/widget.dart';

class WebScreen extends ConsumerStatefulWidget {
  const WebScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WebScreenState();
}

class _WebScreenState extends ConsumerState<WebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPort.lightGreyColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(172),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 59),
          child: SizedBox(
            // color: Colors.black,
            child: Row(
              children: [
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
                    // onTapUser(count);
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
