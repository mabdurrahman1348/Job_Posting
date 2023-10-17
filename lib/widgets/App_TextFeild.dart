import 'package:flutter/material.dart';

class APPTextField extends StatelessWidget {
  APPTextField({required this.placeholder});
  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 27),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF1E1C24),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFF5D5D67))),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: TextField(
              keyboardType: TextInputType.multiline,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
              decoration: InputDecoration(
                hintText: placeholder,
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
    );
  }
}
