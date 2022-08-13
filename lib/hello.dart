import 'dart:io';
import 'dart:math';

import 'package:guess_number/game.dart';

void main() {
  var game = Game();

  int result = 0;
  do {
    stdout.write('Please guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if(guess == null){
      print('Please enter number only');
      continue;
    }

    result = game.doGuess(guess);

  } while(result != 1);
}

