import 'package:flutter/material.dart';
import 'package:job_posting/Screens/HomeScreen.dart';
import 'package:job_posting/Screens/JobPost.dart';
import 'package:job_posting/widgets/AppButton.dart';
import 'package:job_posting/widgets/App_TextFeild.dart';

class AddJob extends StatelessWidget {
  AddJob({Key? key}) : super(key: key);
  TextEditingController titleFeildController = TextEditingController();
  TextEditingController descriptionfieldcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 89, left: 27),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(
                    width: 31,
                  ),
                  const Text(
                    'Add New Job',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 27),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF1E1C24),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: const Color(0xFF5D5D67))),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            controller: titleFeildController,
                            keyboardType: TextInputType.multiline,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                            decoration: const InputDecoration(
                              hintText: 'Enter position name',
                              hintStyle: TextStyle(
                                  color: Color(0xFF8F8F9E),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 27),
                    child: Container(
                      height: 374,
                      decoration: BoxDecoration(
                          color: const Color(0xFF1E1C24),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: const Color(0xFF5D5D67))),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            controller: descriptionfieldcontroller,
                            keyboardType: TextInputType.multiline,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                            decoration: const InputDecoration(
                              hintText: 'Describe Requirement...',
                              hintStyle: TextStyle(
                                  color: Color(0xFF8F8F9E),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 137,
                  ),
                  AppButton(
                      label: 'Submit Job',
                      Navigation: () {
                        Navigator.pop(
                            context,
                            JobPost(titleFeildController.text,
                                descriptionfieldcontroller.text));
                        // MaterialPageRoute(builder: (_) => const Home()));
                      }),
                ],
              ),
            )
          ],
        ));
  }
}
