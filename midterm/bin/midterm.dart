import 'dart:io';
import 'dart:math';

void main() {

  stdout.writeln('Papel,Gunting,Bato! What is your Pick?  ');
  String choice = stdin.readLineSync();

  choice = choice.toLowerCase();
  var gunting = "gunting";
  var papel = "papel";
  var bato = "bato";

  var list = [papel, gunting, bato];
  final random = new Random();
  var value = list[random.nextInt(list.length)];
  print(' $value');

  if (choice == value){
    print("Draw");
  } else {
    if (choice == gunting) {
      if (value == bato) {
        print("You lose");}
      else {
        print("You win");}
    } else if (choice == bato) {
      if (value == papel) {
        print("You lose");}
      else {
        print("You win");}
    } else if (choice == papel) {
      if (value == gunting) {
        print("You lose");}
      else {
        print("You win");}
    }
  }
}
