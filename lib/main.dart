import 'package:borsaapp/splash_loading_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

_launchURL() async {
  const url = 'https://www.instagram.com/borsa.haber/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashLoadingScreen(),
      ),
    );
  }
}

double gecenyilYillikHasilat = 0.0;
double gecenyilAraDonemHasilat = 0.0;
double songelenBilancoHasilat = 0.0;
double songelenBilancoNetKar = 0.0;
double songelenBilancoOzkaynak = 0.0;
double odenmisSermaye = 0.0;
double borsaFiyati = 0.0;
double katorani = 0.0;
double satistahmini = 0.0;
double netkarmarji = 0.0;
double tahminikar = 0.0;
double hissebasikar = 0.0;
double fk = 0.0;
double bistFK = 10.0;
double bistDD = 2.0;
double fkgoreolmasigereken = 0.0;
double tahminiozkaynak = 0.0;
double hissebasidefter = 0.0;
double pdDD = 0.0;
double pdDDolmasiGereken = 0.0;
double icselDeger = 0.0;
double icselGercekDeger = 0.0;
double getiriPotansiyeli = 0.0;
String pdboludd = "";
String fboluK = "";

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double stringToDoubleTryParse(String input) {
    return double.tryParse(input);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Borsa İçsel Değer Hesaplama",
          style: TextStyle(
            fontSize: 15.w,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 4.0, 16.0, 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 30.0.h,
                    ),
                    onPressed: null,
                  ),
                ],
              ),
              onTap: () {
                _launchURL();
              },
            ),
          )
        ],
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 44.h,
                    width: 430.h,
                    child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        decoration: (InputDecoration(
                          hintText: 'GEÇEN YIL YILLIK HASILAT DEĞERİNİ GİRİN',
                          hintStyle: TextStyle(
                              fontSize: 12.h, fontWeight: FontWeight.bold),
                          filled: false,
                          fillColor: Colors.transparent,
                        )),
                        autofocus: false,
                        cursorColor: Colors.blueGrey[900],
                        onChanged: (String gecenyillikhasilat) {
                          gecenyilYillikHasilat =
                              stringToDoubleTryParse(gecenyillikhasilat);
                        }),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blueGrey[900])),
                  ),
                  SizedBox(height: 6.h.h),
                  Container(
                    height: 44.h,
                    width: 430.h,
                    child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        decoration: (InputDecoration(
                          hintText:
                              'GEÇEN YIL ARA DÖNEM HASILAT DEĞERİNİ GİRİN',
                          hintStyle: TextStyle(
                              fontSize: 12.h, fontWeight: FontWeight.bold),
                          filled: false,
                          fillColor: Colors.transparent,
                        )),
                        autofocus: false,
                        cursorColor: Colors.blueGrey[900],
                        onChanged: (String gecenyilaradonem) {
                          gecenyilAraDonemHasilat =
                              stringToDoubleTryParse(gecenyilaradonem);
                        }),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blueGrey[900])),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    height: 44.h,
                    width: 430.h,
                    child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        decoration: (InputDecoration(
                          hintText: 'SON GELEN BİLANÇO HASILAT DEĞERİNİ GİRİN',
                          hintStyle: TextStyle(
                              fontSize: 12.h, fontWeight: FontWeight.bold),
                          filled: false,
                          fillColor: Colors.transparent,
                        )),
                        autofocus: false,
                        cursorColor: Colors.blueGrey[900],
                        onChanged: (String songelenbilanco) {
                          songelenBilancoHasilat =
                              stringToDoubleTryParse(songelenbilanco);
                        }),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blueGrey[900])),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    height: 44.h,
                    width: 430.h,
                    child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        decoration: (InputDecoration(
                          hintText: 'SON GELEN BİLANÇO NET KAR DEĞERİNİ GİRİN',
                          hintStyle: TextStyle(
                              fontSize: 12.h, fontWeight: FontWeight.bold),
                          filled: false,
                          fillColor: Colors.transparent,
                        )),
                        autofocus: false,
                        cursorColor: Colors.blueGrey[900],
                        onChanged: (String songelenbilanconetkar) {
                          songelenBilancoNetKar =
                              stringToDoubleTryParse(songelenbilanconetkar);
                        }),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blueGrey[900])),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    height: 44.h,
                    width: 430.h,
                    child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        decoration: (InputDecoration(
                          hintText: 'SON GELEN BİLANÇO ÖZKAYNAK DEĞERİNİ GİRİN',
                          hintStyle: TextStyle(
                              fontSize: 12.h, fontWeight: FontWeight.bold),
                          filled: false,
                          fillColor: Colors.transparent,
                        )),
                        autofocus: false,
                        cursorColor: Colors.blueGrey[900],
                        onChanged: (String songelenbilancoozkaynak) {
                          songelenBilancoOzkaynak =
                              stringToDoubleTryParse(songelenbilancoozkaynak);
                        }),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blueGrey[900])),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    height: 44.h,
                    width: 430.h,
                    child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        decoration: (InputDecoration(
                          hintText: 'ÖDENMİŞ SERMAYE DEĞERİNİ GİRİN',
                          hintStyle: TextStyle(
                              fontSize: 12.h, fontWeight: FontWeight.bold),
                          // hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          filled: false,
                          fillColor: Colors.transparent,
                        )),
                        autofocus: false,
                        cursorColor: Colors.blueGrey[900],
                        onChanged: (String odenmissermaye) {
                          odenmisSermaye =
                              stringToDoubleTryParse(odenmissermaye);
                        }),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blueGrey[900])),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    height: 44.h,
                    width: 430.h,
                    child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        decoration: (InputDecoration(
                          hintText: 'BORSA FİYATINI GİRİN',
                          hintStyle: TextStyle(
                              fontSize: 12.h, fontWeight: FontWeight.bold),

                          // hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          filled: false,
                          fillColor: Colors.transparent,
                        )),
                        autofocus: false,
                        cursorColor: Colors.blueGrey[900],
                        onChanged: (String borsafiyati) {
                          borsaFiyati = stringToDoubleTryParse(borsafiyati);
                        }),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.blueGrey[900])),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        katorani =
                            gecenyilYillikHasilat / gecenyilAraDonemHasilat;
                        satistahmini = songelenBilancoHasilat * katorani;
                        netkarmarji =
                            songelenBilancoNetKar / songelenBilancoHasilat;
                        tahminikar = netkarmarji * satistahmini;
                        hissebasikar = tahminikar / odenmisSermaye;
                        fk = borsaFiyati / hissebasikar;
                        fkgoreolmasigereken = (bistFK / fk) * borsaFiyati;
                        tahminiozkaynak = songelenBilancoOzkaynak +
                            tahminikar -
                            songelenBilancoNetKar;
                        hissebasidefter = tahminiozkaynak / odenmisSermaye;
                        pdDD = borsaFiyati / hissebasidefter;
                        pdDDolmasiGereken = (bistDD / pdDD) * borsaFiyati;
                        icselDeger = pdDDolmasiGereken + fkgoreolmasigereken;
                        icselGercekDeger = icselDeger / 2;
                        getiriPotansiyeli =
                            ((icselGercekDeger - borsaFiyati) / borsaFiyati) *
                                100;
                        if (bistDD < pdDD) {
                          pdboludd = "PAHALI";
                        } else {
                          pdboludd = "UCUZ";
                        }
                        if (bistFK < fk) {
                          fboluK = "PAHALI";
                        } else {
                          fboluK = "UCUZ";
                        }
                      });
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        "HESAPLA",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.h,
                            fontWeight: FontWeight.bold),
                      )),
                      height: 50.h,
                      width: 200.h,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Text(
                        "GETİRİ POTANSİYELİ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.h,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: pdboludd == ""
                          ? Text(
                              "%0.0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.h,
                                  fontWeight: FontWeight.bold),
                            )
                          : Text(
                              "%${(getiriPotansiyeli).toStringAsFixed(3)}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.h,
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[400],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Text(
                        "PD/DD",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.h,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        "$pdboludd",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.h,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: pdboludd == ""
                      ? Colors.blueGrey[400]
                      : (pdboludd == "UCUZ"
                          ? Colors.green[900]
                          : Colors.red[900]),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Text(
                        "F/K",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.h,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        "$fboluK",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: fboluK == ""
                      ? Colors.blueGrey[400]
                      : (fboluK == "UCUZ"
                          ? Colors.green[900]
                          : Colors.red[900]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
