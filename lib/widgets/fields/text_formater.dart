import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'\D'), ''); // Remove all non-digit characters
    final formattedValue = _addSpacing(text);
    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }

  String _addSpacing(String value) {
    if (value.length <= 3) {
      return value;
    }
    String result = '';
    for (int i = 0; i < value.length; i++) {
      if (i % 3 == 0 && i != 0) {
        result += ' ';
      }
      result += value[i];
    }
    return result;
  }
}