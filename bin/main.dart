import 'dart:io';

import 'Person.dart';
import 'mahasiswa.dart';
import 'pegawai.dart';
import 'personpegawai.dart';

void main() {
  var gaji = 100000;

  DosenLB dlb = DosenLB("Udin", 12345, gaji, 1);
  print('Nama : ${dlb.nama} - Gaji :  ${dlb.Gaji} - SKS : ${dlb.sks}');
  print('-----------------------------------------------------------');

  DosenTamu dt = DosenTamu("Petot", 678, gaji, 1000, 1);
  dt.Absen();
  print('Nama : ${dt.nama} - Gaji :  ${dt.Gaji} - SKS : ${dt.sks}');
  print('-----------------------------------------------------------');

  DosenTetap dt2 = DosenTetap("uwu", 890, gaji, 1000, 1);
  dt2.Absen();
  print('Nama : ${dt2.nama} - Gaji :  ${dt2.Gaji} - SKS : ${dt2.sks}');
  print('-----------------------------------------------------------');

  Staff st = Staff("Karjo", 123, gaji, 1000);
  st.perhitungancuti(12, 10);
  st.Absen();
  print('Nama : ${st.nama} - Gaji :  ${st.Gaji} - Sisa Cuti : ${st.Cuti}');
  print('------------------------------------------------------------');

  Mahasiswa mhs = Mahasiswa("Rudi", 08989, 10);
  print("Apakah Mahasiswa ini Aktif atau Cuti?");
  String? kata = stdin.readLineSync();
  if (kata == "Aktif" || kata == "aktif") {
    print(
        "Status : ${mhs.aktif()} - Nama : ${mhs.nama} - NIP : ${mhs.nrp} - SKS : ${mhs.sks} - IPK : ${mhs.IPK}");
  } else if (kata == "Cuti" || kata == "cuti") {
    print(
        "Status : ${mhs.cuti()} - Nama : ${mhs.nama} - NIP : ${mhs.nrp} - SKS : ${mhs.sks} - IPK : ${mhs.IPK}");
  }
  print('------------------------------------------------------------');
}

void aktif(Mahasiswa mhs) => mhs.aktif();
