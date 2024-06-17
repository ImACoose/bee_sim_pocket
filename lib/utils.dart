extension StringFormatting on String {
  String capitalise() {
    String firstLetter = substring(0, 1);
    firstLetter = firstLetter.toUpperCase();
    return '$firstLetter${substring(1)}';
  }
}
