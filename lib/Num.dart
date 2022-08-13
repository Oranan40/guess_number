
import 'dart:io';

import 'numnum.dart';

void main(){
  var n;
  while(true){
    print("intput maxrandom");
    var input = stdin.readLineSync();
    var count;
    if(input==""){
      n = Numnum ();
    }else{
      var x = int.tryParse(input!);
      count = x;
      n = Numnum(x!);
    }

  int result = 0;

  do {
    print("");
    stdout.write("Please guess the number between 1 and $count : ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      stdout.write("Please enter number only");
      continue;
    }
    result = n.doguess(guess);
  } while (result != 1);
  n.length();
  print("Please enter Yes Or No");
  var play = stdin.readLineSync();
  if(play=="No"){
    break;
  }
}
}