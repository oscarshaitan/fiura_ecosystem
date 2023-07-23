import 'package:flutter/material.dart';

void viewRemoveModal(
    {required BuildContext context,
    required String message,
    required VoidCallback acceptMethod,
    required String acceptText,
    required String cancelText,
    required String title,
    required Color titleColor}) {
  showDialog(
      context: context,
      builder: ((context) => AlertDialog(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: titleColor,
                  ),
            ),
            content: Text(
              message,
              textAlign: TextAlign.start,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: const Color(0xff484848)),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  cancelText,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
              TextButton(
                onPressed: acceptMethod,
                child: Text(
                  acceptText,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.red,
                      ),
                ),
              ),
            ],
          )));
}
