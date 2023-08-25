void main(){
var iller = ["istanbul","ankara","izmir"];


iller.add("eskisehir");
print(iller);

//iller.remove("ankara");

//print(iller);

//iller.removeLast();
//print(iller);

print(iller.where((s) => s.contains("a")));

}