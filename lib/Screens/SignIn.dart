import 'package:flutter/material.dart';
import 'package:job_posting/Screens/HomeScreen.dart';
import 'package:job_posting/Screens/SignUp.dart';
import 'package:job_posting/widgets/AppButton.dart';
import 'package:job_posting/widgets/App_TextFeild.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 110),
              child: const Text(
                'Lets Sign you in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Welcome back\nyou’ve been missed !',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 67,
            ),
            APPTextField(placeholder: 'Enter your email address'),
            const SizedBox(
              height: 20,
            ),
            APPTextField(placeholder: 'Enter your password'),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 239,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 53),
              child: Row(
                children: [
                  const Text(
                    'Don’t have an account ?',
                    style: TextStyle(color: Color(0xFF8F8F9E)),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const SignUp()));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            AppButton(
                label: 'Sign In',
                Navigation: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Home()));
                }),
          ],
        ),
      ),
    );
  }
}
