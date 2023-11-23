import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil ="".obs;

  void HitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari sisi $sisi adalah $hitung ";
  }

  void HitungKeliling(){
    int hitung = sisi * 4;
    hasil.value = "Hasil Perhitungan keliling dari sisi $sisi x 4 adalah $hitung ";
  }
}
