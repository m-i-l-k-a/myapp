import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const MyButton({
    Key? key,required this.iconImagePath,
    required this.buttonText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0XFFFFFFFF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: SvgPicture.asset(
                iconImagePath
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(buttonText),
      ],
    );

  }
}
