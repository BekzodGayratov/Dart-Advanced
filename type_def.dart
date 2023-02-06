void main() {
  // Dartda mavjud turga yangi, mazmunli nom berish imkonini beruvchi turli
  // xil turdagi ma'lumotlarni qo'llab-quvvatlaydi.

  // Masalan bir xil parametrli xar xil ish bajaradigan funksiyalar

  matematika m = kopaytir;
  ListObjects lst = [1, 2, 3, 3];
  print(lst);
  print(m(4, 2));
}

// List ichida objectlarni saqlaydigan bir necha o'zgaruvchi yaratish mumkin
typedef ListObjects = List<Object>;

typedef matematika(int a, int b);

int kopaytir(int a, int b) {
  return a * b;
}

int kamaytir(int a, int b) {
  return a - b;
}

int qosh(int a, int b) {
  return a + b;
}
