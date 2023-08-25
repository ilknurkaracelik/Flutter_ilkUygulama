class PErsonel{
  String ad="";
  String soyad="";
  int kidem=0;
  String durum="";

  PErsonel(String ad, String soyad,int kidem){
    this.ad=ad;
    this.soyad=soyad;
    this.kidem=kidem;
    this.durum=durum;
  }

  String get getDurum{
    String mesaj="";
    if(this.kidem<5){
      mesaj="Kıdemli";
    }
    else if(this.kidem<8){
      mesaj="Uzman";
    }
    else {
      mesaj="Kıdemli Uzman";
    }
    return mesaj;
  }
}