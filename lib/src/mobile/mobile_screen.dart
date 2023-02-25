import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MopbileScreen extends ConsumerStatefulWidget {
  const MopbileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MopbileScreenState();
}

class _MopbileScreenState extends ConsumerState<MopbileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
    );
  }
}
