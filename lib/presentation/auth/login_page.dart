import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hastapos/application/auth/auth_cubit.dart';
import 'package:hastapos/domain/auth/request/login_request_model.dart';
import 'package:hastapos/injectable.dart';
import 'package:hastapos/presentation/auth/registrasi_page_1.dart';
import 'package:hastapos/presentation/cashier_page.dart';
import 'package:hastapos/utils/snackbar_custom/snackbar_utils.dart';
import 'package:hastapos/utils/style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = getIt<AuthCubit>();
    final form = GlobalKey<FormState>();
    final email = TextEditingController();
    final password = TextEditingController();
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
                SizedBox(
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
                  child: Image.asset('assets/login.png'),
                ),
                Text(
                  'Simplify Your Business with Hastapos',
                  style: tBody.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(
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
                          'Email',
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
                            borderSide: BorderSide(
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
                          'Password',
                          style: tBody.copyWith(
                            color: Colors.white,
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
                          errorStyle: tBody.copyWith(fontSize: 12, height: 0.8),
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
                BlocProvider(
                  create: (context) => authCubit,
                  child: BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () {},
                        dioError: (e) {
                          SnackbarUtils.alert(e.error);
                        },
                        loginSuccess: (value) {
                          authCubit
                              .saveUserToLocalStorage(value.loginResponseModel);
                        },
                        saveUserSession: (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CashierPage()),
                        ),
                      );
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: secondaryColor,
                                shape: StadiumBorder()),
                            onPressed: () {
                              if (form.currentState!.validate()) {
                                var _req = LoginRequestModel(
                                    email: email.text, password: password.text);
                                authCubit.login(req: _req);
                              } else {}
                            },
                            child: Text(
                              'Login',
                              style: titleStyle.copyWith(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        loading: (value) => Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: secondaryColor,
                          ),
                          child: const Center(
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Get.to(RegisterPage1()),
                  child: Text(
                    'Belum punya akun ? Daftar  ',
                    style: tBody.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
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
