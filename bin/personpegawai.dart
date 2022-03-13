class Pegawai {
  String? _nama;
  int _nip = 0;
  int _gaji = 0;

  int get nip {
    return _nip;
  }

  int get gaji {
    return _gaji;
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

  set gaji(int dtGaji) {
    _gaji = dtGaji;
  }

  Pegawai(this._nama, this._nip, this._gaji);
}
