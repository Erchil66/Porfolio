import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constant/colors.dart';

import 'package:portfolio/widget/widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../global/global.dart';
import 'mobile.dart';

class MopbileScreen extends ConsumerStatefulWidget {
  const MopbileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MopbileScreenState();
}

class _MopbileScreenState extends ConsumerState<MopbileScreen> {
  List<Widget> pages = const <Widget>[
    HomeMob(),
    ServiceMob(),
    ExpMob(),
    ContactMob(),
  ];

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: MediaQuery.of(context).size.height,
    //   width: MediaQuery.of(context).size.width,
    //   decoration: const BoxDecoration(
    //     color: Colors.black,
    //   ),
    // );
    final global = ref.watch(globalFunction);
    return Scaffold(
      backgroundColor: ColorsPort.lightGreyColor,
      body: DashBoardDrawer(
          child: ScrollablePositionedList.builder(
        itemScrollController: global.itemScrollController,
        itemPositionsListener: global.itemPositionsListener,
        physics: const BouncingScrollPhysics(),
        itemCount: pages.length,
        itemBuilder: (context, index) {
          final page = pages[index];
          return SafeArea(child: page);
        },
      )),
    );
  }
}
