import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

final navSelection = AutoDisposeStateProvider<int>((ref) => 0);

final globalFunction = ChangeNotifierProvider((ref) => FunctionGlobal());

class FunctionGlobal extends ChangeNotifier {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  scrolltoPositon(int? index) {
    itemScrollController.scrollTo(
      index: index!,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
    notifyListeners();
  }
}
