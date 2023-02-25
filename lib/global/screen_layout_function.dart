import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:dio/dio.dart';

final navSelection = AutoDisposeStateProvider<int>((ref) => 0);

final globalFunction = ChangeNotifierProvider((ref) => FunctionGlobal());

class FunctionGlobal extends ChangeNotifier {
  /*
   *
   *  Scrolling 
   * 
   */

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

  /*
   *
   *  Download Asset PDF Cv 
   * 
   */
  final dio = Dio();

  void getHttpDownloadPDF() async {
    html.AnchorElement anchorElement = html.AnchorElement(
        href:
            "https://drive.google.com/uc?export=download&id=1K9u3XaSVPjjJGAbSI80rpj4d8OvpSRHj");
    anchorElement.download = "resume";
    anchorElement.click();
  }
}
