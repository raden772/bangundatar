import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanjangController extends GetxController{
  int panjang =0;
  int lebar =0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = panjang *lebar;
    warna.value = Colors.red;
    hasil.value = "hasil Perhitungan luas dari $panjang x $lebar = $hitung";
  }
  void hitungKeliling(){
    int htng= 2 * (panjang + lebar);
    warna.value = Colors.amber;
    hasil.value = "hasil Perhitungan luas dari $panjang dan $lebar= $htng";
  }
}