extension StringExtensions on String {
  String get intelliTrimOfSubTitle {
    return length > 15 ? '${substring(0, 15)}...' : this;
  }
}
