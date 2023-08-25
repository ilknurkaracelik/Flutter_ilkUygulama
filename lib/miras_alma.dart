void main(){
MusteriIslem musteriIslem = new MusteriIslem();
musteriIslem.dogumGunuolanMusteri();
PersonelIslem personel = new PersonelIslem();
personel.enCokSatanUrun();

personel.kaydet();
musteriIslem.sil();
}



class MusteriIslem extends kisiIslem{
  void dogumGunuolanMusteri(){
    print("Doğum günü olan müşteriler");
  }
}

class PersonelIslem extends kisiIslem{
  void enCokSatanUrun(){
    print("En çok satılan ürün getirildi");
  }
}

class kisiIslem{
  void kaydet(){
    print("Kaydedildi");
  }
  void sil(){
    print("silindi");
  }
}