import 'dart:io';
import 'dart:math';

class Numnum{
  var N ;
  var List = <int>[];
  Numnum([int maxrandom=100]){
    Random r = Random();
    N = r.nextInt(maxrandom);
    stdout.write("คำตอบคือ $N");
  }
  int doguess(int guess){
    if(guess > N){
      stdout.write("$guess is too high");
      List.add(guess);
      return 0;
    }else if(guess < N){
      stdout.write("$guess is too low");
      List.add(guess);
      return 0;
    }else{
      print("$guess is correct");
      List.add(guess);
      return 1;
    }
}
void length(){
    print("${List.length} in a row");
}
}