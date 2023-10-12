import 'package:flutter/material.dart';
import 'package:hastapos/utils/style.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

Widget headerFilter(BuildContext context, SheetState state) => StatefulBuilder(
      builder: (BuildContext context, setState) {
        return Material(
          color: Colors.white,
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      margin: const EdgeInsets.only(top: 8),
                      width: 50,
                      height: 5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Detail Pesanan",
                    style: titleStyle,
                  ),
                  Divider()
                ],
              ),
            ),
          ),
        );
      },
    );
