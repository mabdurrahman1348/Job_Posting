import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({required this.label, required this.Navigation});

  final String label;
  final GestureTapCallback Navigation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 27),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0xFF5D5D67))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: GestureDetector(
                      onTap: Navigation,
                      child: Text(
                        label,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
