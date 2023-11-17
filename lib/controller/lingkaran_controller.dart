import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int jari =0;
  double phi = 3.14;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas(){
    double hitung = phi *jari * jari;
    warna.value = Colors.red;
    hasil.value = "hasil Perhitungan luas dari $jari = $hitung";
  }
  void hitungKeliling(){
    double htng= 2 * phi * jari;
    warna.value = Colors.amber;
    hasil.value = "hasil Perhitungan luas dari $jari= $htng";
  }
}