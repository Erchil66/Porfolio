import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabletScreen extends ConsumerStatefulWidget {
  const TabletScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabletScreenState();
}

class _TabletScreenState extends ConsumerState<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.orange,
      ),
    );
  }
}
