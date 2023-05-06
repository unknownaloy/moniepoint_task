extension DoubleExtension on double {
  String toFixedDecimalPlaces() {
    String result = toStringAsFixed(2);
    if (!result.contains('.')) {
      result += '.00';
    } else if (result.endsWith('.0')) {
      result += '0';
    }
    return result;
  }
}
