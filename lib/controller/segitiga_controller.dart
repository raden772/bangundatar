import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas =0;
  int tinggi =0;
  int a =0;
  int b =0;
  int c =0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = (alas * tinggi)/2;
    warna.value = Colors.red;
    hasil.value = "hasil Perhitungan luas dari ($alas x $tinggi)/2 = $hitung";
  }
  void hitungKeliling(){
    int htng= a + b + c;
    warna.value = Colors.amber;
    hasil.value = "hasil Perhitungan luas dari $a + $b + $c = $htng";
  }
}