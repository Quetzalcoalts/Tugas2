import 'dart:ffi';

mixin Absensi {
  void absensi() {
    print('Absensi Tertambahkan');
  }
}

mixin Cuti {
  String cuti() {
    return ("Mahasiswa Cuti");
  }
}

mixin Aktif {
  String aktif() {
    return ("Mahasiswa Aktif");
  }
}
