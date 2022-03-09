class Person {
  String? _nama;
  int _nrp = 0;

  void setNama(String dtNama) {
    this._nama = dtNama;
  }

  String getNama() {
    return this._nama!;
  }

  Person(this._nama, this._nrp);

  set nama(String dtNama) {
    _nama = dtNama;
  }

  set usia(int dtNrp) {
    _nrp = dtNrp;
  }

  String get nama {
    return _nama!;
  }

  int get usia {
    return _nrp;
  }
}
