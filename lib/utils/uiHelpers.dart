import 'package:flutter/material.dart';
import 'package:topcoder/theme/style.dart';

void showSnackBar(BuildContext context, String message) {
  Scaffold.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(color: AppTheme.textWhite),
      ),
      backgroundColor: AppTheme.primaryRed,
    ),
  );
}

void replaceWith(BuildContext context, String key) {
  Navigator.of(context).pushReplacementNamed(key);
}
