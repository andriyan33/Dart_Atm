import 'dart:io';

void main() {
  print("========");
  print("LOGIN");
  print("========\n");
  stdout.write("Username  : ");
  var nama = stdin.readLineSync();
  stdout.write("Password  :");
  var pass = stdin.readLineSync();
  if (nama == "acep" && pass == "andriyan") {
    print("!!! Berhasil LOGIN ==> ==> ");
    double a = 2000000;
    menu(a);
  }
  else if (nama == "jose" && pass == "rahasia") {
    print("!!! Berhasil LOGIN ==> ==> ");
    double a = 5000000;
    menu(a);
  }
}

void menu(double a) {
  print("Menu :");
  print("1. Tarik Tunai  ");
  print("2. Setor Tunai  ");
  print("3. Cek Saldo  ");
  print("4. Logout  \n");
  stdout.write("Masukan Pilihan : ");
  var pil = stdin.readLineSync();

  double hasil;
  double hasil2;

  if (pil == "1") {
    print("Tarik Tunai");
    stdout.write("Masukan Jumlah Yang akan di Tarik : ");
    double uang = double.parse(stdin.readLineSync());
    a = a - uang;
    print("$a\n");
  } else if (pil == "2") {
    print("Setor Tunai");
    stdout.write("Masukan Jumlah Yang akan di Setor : ");
    double uang = double.parse(stdin.readLineSync());
    a = a + uang;
    print("$a\n");
  } else if (pil == "3") {
    print("$a\n");
  } else if (pil == "4") {
    main();
  } else {
    print("Salah Input Bro!!!");
  }
  menu(a);
}
