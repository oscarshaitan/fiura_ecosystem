dynamic nullValidator(String? value, String message) {
  if (value == null || value.isEmpty) {
    return message;
  } else {
    return null;
  }
}
