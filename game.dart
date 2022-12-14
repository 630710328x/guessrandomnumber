

import 'dart:io';
import 'dart:math';

void main(){
  
  print('╔═══════════════════ ❤ ═══════════════════');
  print('║     ▼ WELCOME TO GUESS THE NUMBER ▼');
  print('╟─────────────────────────────────────────');
  
  var r = Random();
  var answer = r.nextInt(100) + 1;

  var isCorrect = false;
  int count = 0;

  do {
    stdout.write('║   Guess The Number Between 1 - 100 : ');
    var input = stdin.readLineSync();
    
    if(input == null){
      print('  Error, Input is NULL');
      return;
    }

    var guess = int.tryParse(input);

    if(guess == null){
      print('║ Input Error, Please Enter Number Only!');
      continue;
    }

    if(guess > answer){
      print('║ ➜ $guess is TOO HIGH ▲');
      print('╟─────────────────────────────────────────');
      count++;
      isCorrect = false;
    }
    
    else if(guess < answer){
      print('║ ➜ $guess is TOO LOW ▼');
      print('╟─────────────────────────────────────────');
      count++;
      isCorrect = false;
    }
    
    else if(guess == answer){
      count++;
      print('║          ❤ congratulations! ❤');
      print('║ ▲  The Answer is $answer, Total Guesses : $count  ▲');
      print('╟─────────────────────────────────────────');
      isCorrect = true;
    }

  }while(!isCorrect);

  print('║                 THE END ');
  print('╚═══════════════════ ❤ ══════════════════');
}