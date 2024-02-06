import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.textColor,
    required this.text,
    this.iconPath,
    required this.borderCircular,
    this.fontWeight,
    required this.textAlign,
    required this.fontSize,
    required this.buttonColor,
    this.onPressed,
  }) : super(key: key);

  final Color buttonColor;
  final Color textColor;
  final String text;
  final String? iconPath;
  final double borderCircular;
  final FontWeight? fontWeight;
  final TextAlign textAlign;
  final double fontSize;

  // Problem here
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderCircular)),
      color: buttonColor,
      onPressed: onPressed,
      disabledColor: null,
      child: SizedBox(
        width: 340,
        height: 50,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconPath != null)
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    iconPath!,
                    width: 24, // Adjust width and height as needed
                    height: 24,
                  ),
                ),
              Expanded(
                child: Text(
                  text,
                  textAlign: textAlign,
                  style: TextStyle(
                    fontWeight: fontWeight ?? FontWeight.normal,
                    fontSize: fontSize,
                    color: textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
