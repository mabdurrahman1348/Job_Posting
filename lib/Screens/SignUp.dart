import 'package:flutter/material.dart';
import 'package:job_posting/Screens/SignIn.dart';
import 'package:job_posting/widgets/AppButton.dart';
import 'package:job_posting/widgets/App_TextFeild.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 110),
                child: const Text(
                  'Lets Sign you up',
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
                'Welcome\nJoin the community!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 67,
              ),
              APPTextField(placeholder: 'Enter your full name'),
              const SizedBox(
                height: 20,
              ),
              APPTextField(placeholder: 'Enter your email address'),
              const SizedBox(
                height: 20,
              ),
              APPTextField(placeholder: 'Enter your password'),
              const SizedBox(
                height: 187,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 53),
                child: Row(
                  children: [
                    const Text(
                      'Already have an account ?',
                      style: TextStyle(color: Color(0xFF8F8F9E)),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const SignIn()));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              AppButton(
                  label: 'Sign Up',
                  Navigation: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const SignIn()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
