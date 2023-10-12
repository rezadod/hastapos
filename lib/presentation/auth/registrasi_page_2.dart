import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hastapos/utils/style.dart';

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final form = GlobalKey<FormState>();
    final username = TextEditingController();
    final password = TextEditingController();
    final retype = TextEditingController();
    final email = TextEditingController();
    final noHp = TextEditingController();

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'HASTAPOS',
                  style: titleStyle.copyWith(
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/register.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Isi identitas toko kamu',
                  style: tBody.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200),
                ),
                const SizedBox(
                  height: 23,
                ),
                Form(
                  key: form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          'Nama Pemilik Toko',
                          style: tBody.copyWith(
                              fontWeight: FontWeight.w500, color: Colors.white),
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
                            borderSide: const BorderSide(
                              color: secondaryColor,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          errorStyle: tBody.copyWith(fontSize: 12, height: 0.8),
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
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          'Nama Toko',
                          style: tBody.copyWith(
                              fontWeight: FontWeight.w500, color: Colors.white),
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
                            borderSide: const BorderSide(
                              color: secondaryColor,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          errorStyle: tBody.copyWith(fontSize: 12, height: 0.8),
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
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          'Alamat',
                          style: tBody.copyWith(
                              fontWeight: FontWeight.w500, color: Colors.white),
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
                            borderSide: const BorderSide(
                              color: secondaryColor,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          errorStyle: tBody.copyWith(fontSize: 12, height: 0.8),
                          hintText: '0823212312',
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
                        height: 5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                        shape: const StadiumBorder()),
                    onPressed: () {
                      if (form.currentState!.validate()) {
                        Get.to(const RegisterPage2());
                        // var _req = LoginRequestModel(
                        //     email: email.text, password: password.text);
                        // authCubit.login(req: _req);
                      } else {}
                    },
                    child: Text(
                      'Selanjutnya',
                      style: titleStyle.copyWith(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Support by hastadewa',
                  style: tBody.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
