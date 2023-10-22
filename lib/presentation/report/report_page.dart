import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hastapos/presentation/report/card_report.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hastapos/utils/price_format.dart';
import 'package:hastapos/utils/style.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<_SalesData> data = [
      _SalesData('1', 15),
      _SalesData('2', 10),
      _SalesData('3', 34),
      _SalesData('4', 20),
      _SalesData('5', 40),
      _SalesData('6', 33),
      _SalesData('7', 40),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 1,
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     'Laporan Perjualan',
      //     style: titleStyle.copyWith(color: Colors.black),
      //   ),
      // ),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   // titleSpacing: 4,
      //   leading: Container(
      //     margin: EdgeInsets.all(8),
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       color: Color(0xffF9F9F9),
      //       border: Border.all(
      //         color: Colors.black.withOpacity(0.2),
      //       ),
      //     ),
      //     child: Center(
      //         child: HeroIcon(
      //       HeroIcons.chevronLeft,
      //       color: Colors.black,
      //     )),
      //   ),
      //   title: Text(
      //     "Laporan Penjualan",
      //     style: titleStyle,
      //   ),
      // ),
      body: Stack(
        children: [
          Positioned(
            top: 150,
            child: Image.asset(
              'assets/bg1.png',
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(child: Image.asset('assets/bg2.png')),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardReport(
                            textColor: primaryColor,
                            bgColor: primaryColor,
                            date: "Hari ini",
                            icon: HeroIcons.exclamationCircle,
                            iconColor: primaryColor,
                            nominal: "33.000",
                          ),
                          CardReport(
                            textColor: secondaryColor,
                            bgColor: secondaryColor,
                            date: "Minggu ini",
                            icon: HeroIcons.calendar,
                            iconColor: secondaryColor,
                            nominal: "120.000",
                          ),
                          CardReport(
                            textColor: Color(0xff3BE392),
                            bgColor: Color(0xff3BE392),
                            date: "Tahun ini",
                            icon: HeroIcons.calendarDays,
                            iconColor: Color(0xff3BE392),
                            nominal: "33.000",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Grafik Omset Penjualan Minggu Ini',
                      style: titleStyle,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Card(
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            tooltipBehavior: TooltipBehavior(enable: true),
                            series: <ChartSeries<_SalesData, String>>[
                              SplineSeries<_SalesData, String>(
                                  markerSettings:
                                      MarkerSettings(isVisible: true),
                                  splineType: SplineType.natural,
                                  dataSource: data,
                                  xValueMapper: (_SalesData sales, _) =>
                                      sales.year,
                                  yValueMapper: (_SalesData sales, _) =>
                                      sales.sales,
                                  name: 'Sales',

                                  // Enable data label
                                  dataLabelSettings:
                                      DataLabelSettings(isVisible: true))
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Transaksi Terakhir',
                      style: titleStyle,
                    ),
                    Card(
                      elevation: 2,
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: primaryColor.withOpacity(0.2)),
                                child: HeroIcon(
                                  HeroIcons.shoppingCart,
                                  color: primaryColor,
                                  size: 33,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Reza',
                                  style: tBody,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  '22 Nov 2023',
                                  style: tBody,
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Rp.120.000",
                              style: titleStyle,
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Stock',
                      style: titleStyle,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardReport(
                            textColor: primaryColor,
                            bgColor: primaryColor,
                            date: "Hari ini",
                            icon: HeroIcons.exclamationCircle,
                            iconColor: primaryColor,
                            nominal: "33.000",
                          ),
                          CardReport(
                            textColor: secondaryColor,
                            bgColor: secondaryColor,
                            date: "Minggu ini",
                            icon: HeroIcons.calendar,
                            iconColor: secondaryColor,
                            nominal: "120.000",
                          ),
                          CardReport(
                            textColor: Color(0xff3BE392),
                            bgColor: Color(0xff3BE392),
                            date: "Tahun ini",
                            icon: HeroIcons.calendarDays,
                            iconColor: Color(0xff3BE392),
                            nominal: "33.000",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Center(
                      child: Text(
                        'Support by hastadewa',
                        style: tBody.copyWith(
                            fontSize: 12, fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                  // height: 60  ,
                  color: whiteColor,
                  child: Text(
                    "Laporan Penjualan",
                    style: titleStyle,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
