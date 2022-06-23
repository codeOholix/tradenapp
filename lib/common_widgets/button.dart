import 'package:flutter/material.dart';
import 'package:tradenapp/app/colors.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color? bgColor;
  final ShapeBorder? border;
  final Color? textColor;
  final EdgeInsets padding;

  const CommonButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.bgColor,
    this.border,
    this.textColor,
    this.padding = const EdgeInsets.all(10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: padding,
      color: bgColor != null ? bgColor : Colors.blue,
      onPressed: () => onTap(),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
      ),
      shape: border ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
    );
  }
}
