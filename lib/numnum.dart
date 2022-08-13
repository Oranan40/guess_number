import 'dart:io';
import 'dart:math';

class Numnum{
  var N ;
  Numnum(){
    Random r = Random();
    N = r.nextInt(100)+1;
    stdout.write("คำตอบคือ $N");
  }
  int doguess(int guess){
    if(guess > N){
      stdout.write("$guess is too high");
      return 0;
    }else if(guess < N){
      stdout.write("$guess is too low");
      return 0;
    }else{
      print("$guess is correct");
      return 1;
    }
}
}