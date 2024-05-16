import 'dart:math';

String getUniqueEmailId() {
  const charset = "abcdefghijklmnopqrstuvwxyz0123456789";
  var result = '';
  Random random = Random();

  for (int i = 0; i < 6; i++) {
    int randomIndex = random.nextInt(charset.length);
    result += charset[randomIndex];
  }
  return '$result@integration.com';
}