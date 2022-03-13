import 'dart:ffi';
import 'dart:io';
import 'Person.dart';
import 'lainlain.dart';

class Mahasiswa extends Person with Cuti, Aktif {
  int? _ambilsks;
  Float? _ips;
  Float? _ipk;

  Mahasiswa(String? nama, int nrp, int ambilsks2) : super(nama, nrp) {
    if (ambilsks2 < 2) {
      this._ambilsks = 2;
    } else if (ambilsks2 > 24) {
      this._ambilsks = 24;
    } else {
      this._ambilsks = ambilsks2;
    }
  }

  get IPK {
    print("Semester berapa sekarang !");
    String? kata = stdin.readLineSync();
    int angka = int.parse(kata!);
    double c = 0;
    double c2 = 0;

    if (angka == 1) {
      print("Input IPS dari Semester 1");
      String? kata = stdin.readLineSync();
      double ips = double.parse(kata!);

      return (ips / 1);
    } else {
      for (int i = 1; i < angka; i++) {
        print("Input IPS dari Semester $i");
        String? kata = stdin.readLineSync();
        double ips = double.parse(kata!);
        c2++;

        c += ips;
      }
      return (c / c2);
    }
  }

  get sks {
    return (_ambilsks);
  }
}
