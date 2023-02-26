// ignore: avoid_web_libraries_in_flutter
import 'dart:developer';
import 'dart:html' as html;

import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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

  void getHttpDownloadPDF() async {
    html.AnchorElement anchorElement = html.AnchorElement(
        href:
            "https://drive.google.com/uc?export=download&id=1K9u3XaSVPjjJGAbSI80rpj4d8OvpSRHj");
    anchorElement.download = "cv";
    anchorElement.click();
  }

  /*
   *
   *  Send Email
   * 
   */
  TextEditingController emailSender = TextEditingController(),
      subject = TextEditingController(),
      name = TextEditingController(),
      message = TextEditingController();
  bool showError = false, messageSuccess = false;
  sendEmail() async {
    if (emailSender.text.isNotEmpty &&
        message.text.isNotEmpty &&
        name.text.isNotEmpty) {
      final templateParams = {
        'subject': subject.text,
        'to_name': 'Erchil Amad',
        'from_name': name.text,
        'message': message.text,
        'from_email': emailSender.text
      };

      try {
        await EmailJS.send(
          'service_7gpe20p',
          'template_hundeuh',
          templateParams,
          const Options(
            publicKey: 'MmK-tStsCqotNq6N6',
            privateKey: 'qmy5DcQym_uxXKAGlmN1C',
          ),
        );
        log('SUCCESS!');
        emailSender.text = "";
        name.text = "";
        subject.text = "";
        message.text = "";
        showError = false;
        messageSuccess = true;
        notifyListeners();
        Future.delayed(const Duration(seconds: 3), () {
          messageSuccess = false;
          notifyListeners();
        });
      } catch (error) {
        log(error.toString());
      }
    } else {
      showError = true;

      notifyListeners();
    }
  }
}
