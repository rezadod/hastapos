import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hastapos/utils/price_format.dart';
import 'package:hastapos/utils/style.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List list = [
      {"id": 1, "date": "Hari ini", "nominal": 4000432420},
      {"id": 2, "date": "Minggu ini", "nominal": 4232342},
      {"id": 3, "date": "Bulan ini", "nominal": 49432},
      {"id": 4, "date": "Tahun ini", "nominal": 32424},
    ];
    final List stock = [
      {"id": 1, "name": "Total Stock", "no": 321},
      {"id": 2, "name": "Barang Terjual Hari Ini", "no": 3},
      {"id": 3, "name": "Bulan ini", "no": 321},
      {"id": 4, "name": "Tahun ini", "no": 3},
    ];
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const HeroIcon(
            HeroIcons.arrowLeft,
            size: 22,
            color: Colors.black,
          ),
        ),
        elevation: 1,
        backgroundColor: whiteColor,
        title: Text(
          "Laporan",
          style: titleStyle.copyWith(),
        ),
      ),

      // backgroundColor: primaryColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Laporan Penjualan",
              style: titleStyle.copyWith(fontSize: 16),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                aspectRatio: 2,
                enlargeCenterPage: true,
              ),
              items: list
                  .map(
                    (e) => Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            e['date'],
                            style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            CurrencyFormat.convertToIdr(e['nominal'], 0),
                            style: titleStyle.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              HeroIcon(
                                HeroIcons.arrowUpRight,
                                size: 12,
                                style: HeroIconStyle.solid,
                                color: Color(0xff9ED2BE),
                              ),
                              Text(
                                ' Rp.4000',
                                style: tBody.copyWith(
                                  color: Color(0xff9ED2BE),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ' kemarin',
                                style: tBody.copyWith(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            Text(
              "Laporan Stock",
              style: titleStyle.copyWith(fontSize: 16),
            ),

            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: stock.length,
                itemBuilder: (BuildContext ctx, index) {
                  var data = stock[index];
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          data['name'].toString(),
                          style: tBody.copyWith(color: Colors.white),
                        ),
                        Text(
                          data['no'].toString(),
                          style: titleStyle.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       CardReport(),
            //       CardReport(),
            //       CardReport(),
            //       CardReport(),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
