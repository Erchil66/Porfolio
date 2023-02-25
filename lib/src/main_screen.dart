import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/src.dart';

class MainHomeScreen extends ConsumerStatefulWidget {
  const MainHomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends ConsumerState<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context1, context2) {
      if (context2.maxWidth >= 1440) {
        return const WebScreen();
      } else if (context2.maxWidth < 1440 && context2.maxWidth > 480) {
        return const TabletScreen();
      } else {
        return const MopbileScreen();
      }
    });
  }
}
