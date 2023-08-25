

void main()
{
  Personel personel1 = new Personel();
  personel1._ad="İlknur";
  personel1._soyad="Karaçelik";
  personel1._email="ilknur@hotmail.com";
  personel1._yas=38;
  personel1._tcNo="266232";

  //var personeller = new List(3);
  //personeller[0]=personel1;

  Personel personel2=new Personel.namedCons("Ali","Yılmaz",25,"yilmaz@yilmaz.com","123545");
print(personel2._soyad);


  var personelIslem = new PersonelIslem();
  personelIslem.kaydet(personel1);
}


class Personel{
  Personel(){
    print("yapıcı blok çalıştı");
  }
  Personel.namedCons(String ad, String soyad, int yas, String email,String tcNo){
 this._ad=ad;
 this._soyad=soyad;
 this._yas=yas;
 this._email=email;
 this._tcNo=tcNo;
  }
  String _ad="";
  String _soyad="";
  int _yas=0;
  String _email="";
  String _tcNo="";
}

class PersonelIslem {
  void kaydet(Personel personel){
    print("Personel kaydedildi"+ personel._ad);
  }
  void sil(){
    print("Personel Silindi");
  }
  void guncelle(){
    print("Personel Güncellendi");
  }
}