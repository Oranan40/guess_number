
import 'dart:io';

import 'numnum.dart';

void main(){
  int sum = 0;
  while(true){
  var n = Numnum ();
  int result = 0;

  do {
    print("");
    stdout.write("Please guess the number between 1 and 100 : ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      stdout.write("Please enter number only");
      continue;
    }
    result = n.doguess(guess);
    sum++;
  } while (result != 1);
  print("Please enter Yes Or No");
  var play = stdin.readLineSync();
  if(play=="No"){
    break;
  }
}
print("$sum in a row");
}