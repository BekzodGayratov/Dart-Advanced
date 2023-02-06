void main() {
  // call funksiyalari foydalanuvchiga classdan instance olgan 
  //holda ishlatishga ruxsat 
  var tesla = Tesla();
  var outPut = tesla("Salom","Dunyo");// Bu yerga argumentlarni jo'natamiz (Xuddi konstruktor singari)
}

class Tesla {
  String call(String a, String b) {
    return "Hello";
  }
}
