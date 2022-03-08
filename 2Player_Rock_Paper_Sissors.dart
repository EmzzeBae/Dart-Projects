import 'dart:io';
import 'dart:math';
import 'dart:convert';


void main() {
  int player1Score= 0;
  int player2Score= 0;
  int player1Choice = 5;
  int player2Choice = 5;
  int temp = 5;
  var arr = ['Rock','Paper','Scissors'];

  while(true){

    if(player1Score != 3 && player2Score != 3){
      print("\nPlayer 1's Turn");
      player1Choice = getPlayerMove();
      
      print("\n");
      print("Player 2's Turn");
      player2Choice = getPlayerMove();
      print("\n");
      temp = whoWon(player1Choice, player2Choice);

      if (temp == 1){
        player1Score += 1;
      }
      else if (temp == 0){
        player2Score += 1;
      }
    }
    else{
      break;
    }

    if(temp != 3){
      print("-------------------------------");
      print("-Player 1-  |  -Player 2-");
      print("-------------------------------");
      print('${arr[player1Choice]}           ${arr[player2Choice]}');
      print("        |Score|     ");
      print("${player1Score}           |      ${player2Score}");
      print("-------------------------------");
    }
    else{
      print("-------------------------------");
      print("-PLAYER-  |  -COMPUTER-");
      print("-------------------------------");
      print('${arr[player1Choice]}            ${arr[player2Choice]}');
      print("         |Score|     ");
      print("${player1Score}          |       ${player2Score}");
      print("-------------------------------");
      print("     *** TIE ***");
      print("-------------------------------");

    }
    print("\n***************************************************");

  
  }
  print("\n\n");
  if(player1Score == 3){
    print("###########################################");
    print("------ Congratulatoins you have Won ------");
    print("###########################################");
  }
  else{
    print("##################################");
    print("***** You have lost the game *****");
    print("##################################");
  }



//----------------------------------------------
}


int getPlayerMove(){
  print("Choose Rock(r), Paper(p), Scissors(s) :-");
  String? temp = stdin.readLineSync();
    if(temp == "r" || temp == "R"){
    // Rock
    return 0;
  }
  else if(temp == "p" || temp == "P"){
    // Paper
    return 1;
  }
  else if(temp == "s" || temp == "S"){
    // Scissors
    return 2;
  }
  else{
    print("*** Invalid Choice ***");
  }

  return 3;
}


int whoWon(int player1Choice, int player2Choice){

   if(player1Choice == player2Choice){
    //print("Tie");
    return 3;
  }
  else{
    if(player1Choice == 1 && player2Choice == 0){ // Paper vs Rock
      //print("Win");
      return 1;
    }
    else if(player1Choice == 2 && player2Choice == 1){ // Scissors vs Paper
      //print("Win");
      return 1;
    }
    else if(player1Choice == 0 && player2Choice == 2){ // Rock vs Scissors
      //print("Win");
      return 1;
    }
    else{
      //print("Lose");
      return 0;
    }
  }

}
