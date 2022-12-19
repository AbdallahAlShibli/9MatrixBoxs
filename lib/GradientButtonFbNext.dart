import 'package:flutter/material.dart';

class GradientButtonFb1Next extends StatelessWidget {
  final String text;
  final Icon icona;
  final Function() onPressed;
  const GradientButtonFb1Next(
      {required this.text,
      required this.icona,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 26, 126, 192);
    const secondaryColor = Color.fromARGB(255, 27, 132, 218);
    const accentColor = Color(0xffffffff);

    const double borderRadius = 15;

    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient:
                const LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                alignment: Alignment.center,
                padding: MaterialStateProperty.all(const EdgeInsets.only(
                    right: 75, left: 75, top: 15, bottom: 15)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius)),
                )),
            onPressed: onPressed,
            child: Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(color: accentColor, fontSize: 16),
                ),
                icona
              ],
            )));
  }
}
