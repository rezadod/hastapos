import 'package:flutter/material.dart';
import 'package:hastapos/presentation/auth/login_page.dart';
import 'package:hastapos/presentation/auth/registrasi_page_1.dart';
import 'package:hastapos/utils/style.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor.withOpacity(0.9),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logohasta.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Selamat Datang',
              style: titleStyle.copyWith(fontSize: 22, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Kelola bisnismu',
              style: tBody.copyWith(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
            Text(
              'Mudah & Menyenangkan',
              style: tBody.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                ),
                child: Text(
                  'Login',
                  style: titleStyle.copyWith(
                    color: primaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: BorderSide(
                    width: 0.5,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterPage1()),
                ),
                child: Text(
                  'Register',
                  style: titleStyle.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          'Support by hastadewa',
          textAlign: TextAlign.center,
          style: tBody.copyWith(
            fontSize: 10,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
