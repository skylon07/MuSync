import 'package:flutter_modified/material.dart';

void showAlertingDialog(
  BuildContext context,
  {String? title, String? content}
) =>
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: title != null ? Text(title) : null,
      content: content != null ? Text(content) : null,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Okay")),
        ],
    ),
    barrierDismissible: true,
  );
