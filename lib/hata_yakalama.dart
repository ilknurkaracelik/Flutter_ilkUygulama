void main(){
  int sayi1=20;
  int sayi2=0;



  try{
    int sonuc=sayi1~/sayi2;
    print("sonuc:"+sonuc.toString());
  } on IntegerDivisionByZeroException

  catch(e){
    print("hata"+ e.toString());
  }
}