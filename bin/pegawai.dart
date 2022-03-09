import 'Person.dart';
import 'lainlain.dart';
import 'personpegawai.dart';

class DosenLB extends Pegawai {
  int? sks;
  DosenLB(String? nama, int nip, int gaji, int sks) : super(nama, nip, gaji);
}

class DosenTetap extends Pegawai with Absensi {
  int? tunjkehadir;
  int? sks;

  DosenTetap(String? nama, int nip, int gaji, int tunjkehadir2, int sks2)
      : super(nama, nip, gaji);
}

class DosenTamu extends Pegawai with Absensi {
  int? tunjkehadir;
  int? sks;

  DosenTamu(String? nama, int nip, int gaji, int tunjkehadir2, int sks2)
      : super(nama, nip, gaji);
}

class Staff extends Pegawai with Absensi {
  int? _tunjkehadir;
  int cuti = 0;
  int? totgaji;

  Staff(String? nama, int nip, int gaji, int tunjkehadir2, int cuti2,
      int totgaji2)
      : super(nama, nip, gaji);
}
