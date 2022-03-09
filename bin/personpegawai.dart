class Pegawai {
  String? _nama;
  int _nip = 0;
  int _gaji = 0;

  Pegawai(this._nama, this._nip, this._gaji);

  int get nip {
    return _nip;
  }

  int get gaji {
    return _gaji;
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
}
