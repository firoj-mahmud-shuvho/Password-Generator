import 'dart:math';
import 'dart:io';

String generatePassword(int length) {
  var rand = Random.secure();
  var codeUnits = List.generate(length, (index) {
    return rand.nextInt(93) + 33;
  });
  return String.fromCharCodes(codeUnits);
}

void main() {
  stdout.write('Enter password length: ');
  var input = stdin.readLineSync();
  var length = int.tryParse(input.toString());
  var password = generatePassword(length!);
  print('Random password: $password');
}