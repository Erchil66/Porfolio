import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpWeb extends ConsumerStatefulWidget {
  const ExpWeb({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExpWebState();
}

class _ExpWebState extends ConsumerState<ExpWeb> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: const [],
      ),
    );
  }
}
