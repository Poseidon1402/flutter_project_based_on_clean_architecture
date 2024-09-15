import 'package:flutter/material.dart';

SnackBar myAppSnackBar(
    {required BuildContext context,
      Key? key,
    required String message,
    required Color backgroundColor}) {
  return SnackBar(
    key: key,
    content: Text(
      message,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.white,
          ),
    ),
    backgroundColor: backgroundColor,
    duration: const Duration(seconds: 5),
  );
}
