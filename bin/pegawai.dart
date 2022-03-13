import 'Person.dart';
import 'lainlain.dart';
import 'personpegawai.dart';

class DosenLB extends Pegawai {
  int? sks;
  DosenLB(String? nama, int nip, int gaji, int sks) : super(nama, nip, gaji) {
    this.sks = sks;
  }

  get Gaji {
    return (gaji + (sks! * 40000));
  }

  get Sks {
    return (sks);
  }
}

class DosenTetap extends Pegawai with Absensi {
  int? tunjkehadir;
  int? sks;
  int absen = 0;

  DosenTetap(String? nama, int nip, int gaji, int tunjkehadir2, int sks2)
      : super(nama, nip, gaji) {
    this.tunjkehadir = tunjkehadir2;
    this.sks = sks2;
  }

  get Gaji {
    return ((sks! * 40000) + (tunjkehadir! * absen));
  }

  get Sks {
    return (sks);
  }

  Absen() {
    absensi();
    absen++;
  }
}

class DosenTamu extends Pegawai with Absensi {
  int? tunjkehadir;
  int? sks;
  int absen = 1;

  DosenTamu(String? nama, int nip, int gaji, int tunjkehadir2, int sks2)
      : super(nama, nip, gaji) {
    this.tunjkehadir = tunjkehadir2;
    this.sks = sks2;
  }
  get Gaji {
    return (gaji + (sks! * 40000) + (tunjkehadir! * absen));
  }

  get Sks {
    return (sks);
  }

  Absen() {
    absensi();
    absen++;
  }
}

class Staff extends Pegawai with Absensi {
  int? _tunjkehadir;
  int? totgaji;
  int? cuti;
  int? lama;
  int absen = 0;

  Staff(String? nama, int nip, int gaji, int tunjkehadir2)
      : super(nama, nip, gaji) {
    _tunjkehadir = tunjkehadir2;
  }

  get Gaji {
    return (gaji + _tunjkehadir!);
  }

  perhitungancuti(int i, int j) {
    if (i > 12) {
      i = 12;
    }
    cuti = i - j;
  }

  get Cuti {
    return (cuti);
  }

  Absen() {
    absensi();
    absen++;
  }
}
