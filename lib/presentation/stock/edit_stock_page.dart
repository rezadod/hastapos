import 'package:flutter/material.dart';
import 'package:hastapos/utils/style.dart';
import 'package:heroicons/heroicons.dart';

class EditStockPage extends StatelessWidget {
  const EditStockPage({super.key});

  @override
  Widget build(BuildContext context) {
    final form = GlobalKey<FormState>();
    final username = TextEditingController();
    final password = TextEditingController();
    final email = TextEditingController();
    final namaToko = TextEditingController();
    final namaPemilik = TextEditingController();
    final noHp = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Text(
          'Ubah Stock',
          style: titleStyle.copyWith(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
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
        elevation: 0.5,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Form(
                      key: form,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Nama Toko',
                              style: titleStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          TextFormField(
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: namaToko,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Cth. Hasta Shop',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Nama Toko harus di isi";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Nama Pemilik',
                              style: titleStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          TextFormField(
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: TextEditingController(text: 'Meja'),
                            readOnly: true,
                            enabled: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              // hintText: 'Cth. HastaDewa',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Nama Pemilik harus di isi";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'No.Hp',
                              style: titleStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: noHp,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Cth. 0831213',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "No HP harus di isi";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Email',
                              style: titleStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: email,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: 'Cth. hasta@mail.com',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Email harus di isi";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              'Password',
                              style: titleStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          TextFormField(
                            style: tBody.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            controller: password,
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              errorStyle:
                                  tBody.copyWith(fontSize: 12, height: 0.8),
                              hintText: '****',
                              hintStyle: tBody.copyWith(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                              isDense: true,
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Password harus di isi";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            if (form.currentState!.validate()) {
              print("Beehasil");
            } else {
              print("Gaga");
            }
          },
          child: Text(
            'Ubah',
            style: titleStyle.copyWith(
                color: whiteColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
