import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:hastapos/presentation/components/sumbit_button.dart';
import 'package:hastapos/presentation/menu/widgets/card_menu.dart';
import 'package:hastapos/utils/style.dart';
import 'package:heroicons/heroicons.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List list = [
      {
        "id": 1,
        "image":
            'https://images.unsplash.com/photo-1609153450163-73fa2c625c48?auto=format&fit=crop&q=80&w=1954&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      },
      {
        "id": 2,
        "image":
            'https://images.unsplash.com/photo-1609153450163-73fa2c625c48?auto=format&fit=crop&q=80&w=1954&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      },
      {
        "id": 3,
        "image":
            'https://images.unsplash.com/photo-1609153450163-73fa2c625c48?auto=format&fit=crop&q=80&w=1954&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      },
    ];
    return Stack(
      children: [
        Scaffold(
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
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 47,
                            height: 47,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC4C4C4)),
                                shape: BoxShape.circle),
                            child: HeroIcon(
                              HeroIcons.user,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'KERTAJAYA SHOP',
                                style: titleStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'admin',
                                style:
                                    tBody.copyWith(fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32,
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
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    image: DecorationImage(
                                        image: NetworkImage(e['image']),
                                        fit: BoxFit.cover)),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(
                        height: 41,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CardMenu(
                            title: "Kasir",
                            icon: HeroIcons.clipboard,
                          ),
                          CardMenu(
                            title: "Stock",
                            icon: HeroIcons.cube,
                          ),
                          CardMenu(
                            title: "Laporan",
                            icon: HeroIcons.chartPie,
                          ),
                          CardMenu(
                            title: "Akses",
                            icon: HeroIcons.userGroup,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
            child: SubmitButton(
                ontap: () {}, title: 'Logout', color: secondaryColor),
          ),
        ),
      ],
    );
  }
}
