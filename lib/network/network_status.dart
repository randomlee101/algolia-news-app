import 'package:flutter/material.dart';
import 'package:algolia_news_app/main.dart';

class NetworkStatus {
  static modal({required String message, required Icon icon}) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: nav.currentContext!,
        builder: (context) => Container(
          width: double.infinity,
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                boxShadow: const [BoxShadow(color: Colors.white12, spreadRadius: 2.5, blurRadius: 5)],
                color: Theme.of(context).scaffoldBackgroundColor
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Container(margin: const EdgeInsets.symmetric(vertical: 16),height: 5, width: 32, decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(4)
                ),),icon, const SizedBox(height: 15,), Text(message ?? "", textAlign: TextAlign.center,)],
              ),
            ));
  }

  static success({required String message}) {
    modal(
        message: message,
        icon: const Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 64,
        ));
  }

  static error({String? message}) {
    modal(
        message: message ?? "An Error Occurred",
        icon: const Icon(
          Icons.cancel,
          color: Colors.red,
          size: 64,
        ));
  }
}
