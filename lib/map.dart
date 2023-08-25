
void main(){
  var sozluk={"book":"kitap","pencil":"kalem","eraser":"silgi"};

  print(sozluk["pencil"]);

  sozluk["table"]="masa";

  sozluk.remove("eraser");

  print(sozluk);

  for (var anahtar in sozluk.keys){
    print(anahtar);
  }
}