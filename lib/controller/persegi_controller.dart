import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi *sisi;
    warna.value = Colors.red;
    hasil.value = "hasil Perhitungan luas dari $sisi x $sisi = $hitung";
  }
  void hitungKeliling(){
    int htng= sisi*4;
    warna.value = Colors.amber;
    hasil.value = "hasil Perhitungan luas dari $sisi= $htng";
  }
}