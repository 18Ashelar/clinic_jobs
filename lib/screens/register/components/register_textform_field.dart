
import 'package:flutter/material.dart';

class RegisterTextFormField extends StatelessWidget {
  RegisterTextFormField(
      {Key? key, required this.label, this.prefixIcon, this.suffixIcon})
      : super(key: key);

  final String label;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  double deviceWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      // color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: deviceWidth * 0.3,
            child: Text(
              label,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF51447b),
                  fontSize: 18.0),
            ),
          ),
          // const Spacer(),
          Expanded(
            child: TextFormField(
              cursorColor: const Color(0xFF8c85a4),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
                fontSize: 16,
              ),
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFef9279),
                  fontSize: 16,
                ),
                labelText: "| (type)",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                isDense: true,
                prefixIcon: prefixIcon != null
                    ? Icon(
                        prefixIcon,
                        size: 25.0,
                        color: const Color(0xFF574689),
                      )
                    : null,
                suffixIcon: suffixIcon != null
                    ? Icon(
                        suffixIcon,
                        size: 25.0,
                        color: const Color(0xFF574689),
                      )
                    : null,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8c85a4)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8c85a4)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8c85a4)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
