import 'package:bangun_datar_kelas_b/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_b/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "Home Page",
              style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xFFD4B51C)),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>PersegiPage()));
                },
                child: CustomMenu(imageAssets: "assets/persegi.jpeg",title: "Persegi"))),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>PanjangPage()));
                },
                  child: CustomMenu(imageAssets: "assets/panjang.jpeg",title: "Persegi Panjang")),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>LingkaranPage()));
                    },
                    child: CustomMenu(imageAssets: "assets/blet.jpeg",title: "Lingkaran")),
              ),
              Expanded(child: InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>SegitigaPage()));
                },
                child: CustomMenu(imageAssets: "assets/segitiga.jpeg",title: "Segitiga")),
              ),
            ]
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });

  final String imageAssets;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        color: Colors.amberAccent,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAssets, height: 100),
            Text(title, style: TextStyle(color: Colors.white),),
          ],
        ));
  }
}
