class Pegawai {
  String? _nama;
  int _nip = 0;

  int get nip {
    return _nip;
  }

  String get nama {
    return _nama!;
  }

  set nama(String dtNama) {
    _nama = dtNama;
  }

  set nip(int dtNip) {
    _nip = dtNip;
  }

  Pegawai(this._nama, this._nip);
}
