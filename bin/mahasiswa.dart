import 'dart:ffi';

import 'Person.dart';

class Mahasiswa extends Person {
  int _sks = 2;
  String? _status;
  int? _ambilsks;
  Float? _ips;
  Float? _ipk;

  Mahasiswa(String? nama, int nrp) : super(nama, nrp);

  set sks(int dtSks) {
    _sks = dtSks;
  }

  set status(String dtStatus) {
    _status = dtStatus;
  }

  set ambilsks(int dtambilsks) {
    _ambilsks = dtambilsks;
  }

  set ips(Float dtips) {
    _ips = dtips;
  }

  set ipk(Float dtipk) {
    _ipk = dtipk;
  }
}
