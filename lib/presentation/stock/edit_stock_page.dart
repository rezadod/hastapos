import 'package:flutter/material.dart';
import 'package:hastapos/presentation/components/sumbit_button.dart';
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
                      SizedBox(
                        height: 50,
                      ),
                      Form(
                        key: form,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                'Email',
                                style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            TextFormField(
                              style: tBody.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              controller: email,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    const EdgeInsets.only(left: 10, bottom: 30),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: secondaryColor,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                errorStyle:
                                    tBody.copyWith(fontSize: 12, height: 0.8),
                                hintText: 'Cth. reza',
                                hintStyle: tBody.copyWith(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              validator: (value) {
                                if (value == "") {
                                  return "Email harus di isi";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                'Email',
                                style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            TextFormField(
                              style: tBody.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              controller: email,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    const EdgeInsets.only(left: 10, bottom: 30),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: secondaryColor,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                errorStyle:
                                    tBody.copyWith(fontSize: 12, height: 0.8),
                                hintText: 'Cth. reza',
                                hintStyle: tBody.copyWith(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              validator: (value) {
                                if (value == "") {
                                  return "Email harus di isi";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                'Email',
                                style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            TextFormField(
                              style: tBody.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              controller: email,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    const EdgeInsets.only(left: 10, bottom: 30),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: secondaryColor,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                errorStyle:
                                    tBody.copyWith(fontSize: 12, height: 0.8),
                                hintText: 'Cth. reza',
                                hintStyle: tBody.copyWith(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              validator: (value) {
                                if (value == "") {
                                  return "Email harus di isi";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                'Email',
                                style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            TextFormField(
                              style: tBody.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              controller: email,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    const EdgeInsets.only(left: 10, bottom: 30),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: secondaryColor,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                errorStyle:
                                    tBody.copyWith(fontSize: 12, height: 0.8),
                                hintText: 'Cth. reza',
                                hintStyle: tBody.copyWith(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              validator: (value) {
                                if (value == "") {
                                  return "Email harus di isi";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                'Email',
                                style: tBody.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            TextFormField(
                              style: tBody.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              controller: email,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    const EdgeInsets.only(left: 10, bottom: 30),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: secondaryColor,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                errorStyle:
                                    tBody.copyWith(fontSize: 12, height: 0.8),
                                hintText: 'Cth. reza',
                                hintStyle: tBody.copyWith(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              validator: (value) {
                                if (value == "") {
                                  return "Email harus di isi";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Text(
                                'Password',
                                style: tBody.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            TextFormField(
                              style: tBody.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              controller: password,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: secondaryColor,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                errorStyle:
                                    tBody.copyWith(fontSize: 12, height: 0.8),
                                hintText: '******',
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
                            const SizedBox(
                              height: 5,
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SubmitButton(color: primaryColor, ontap: () {}, title: "Ubah"),
        ));
  }
}
