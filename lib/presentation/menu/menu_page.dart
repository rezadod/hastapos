import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:hastapos/utils/style.dart';
import 'package:heroicons/heroicons.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myProducts = [
      {"id": 1, "name": "Stock"},
      {"id": 2, "name": "Cashier "},
      {"id": 3, "name": "Laporan\nStock"},
      {"id": 4, "name": "Laporan\nPenjualan"},
      {"id": 5, "name": "Tambah\nAkses"},
    ];

    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: 150 / 4,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        child: ProfilePicture(
                          random: true,
                          name: "username",
                          radius: 25,
                          fontsize: 21,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SANJAYA',
                          style: titleStyle.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'reza@21.g',
                          style: tBody.copyWith(
                              color: Colors.white, fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        child: ProfilePicture(
                          random: true,
                          name: "username",
                          radius: 25,
                          fontsize: 21,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: myProducts.length,
                itemBuilder: (BuildContext ctx, index) {
                  var id = myProducts[index]['id'];
                  return ClipRRect(
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HeroIcon(HeroIcons.cake),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            myProducts[index]['name'].toString(),
                            textAlign: TextAlign.center,
                            style: tBody,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
