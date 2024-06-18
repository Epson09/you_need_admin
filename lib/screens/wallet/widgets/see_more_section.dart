// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:admin_you_need/common/constants.dart';

class SectionTitle extends StatelessWidget {

  final String title, subtitle;
  final GestureTapCallback press;
  const SectionTitle({
    super.key,
    required this.subtitle,
    required this.press,
    required this.title,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: kBlue,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            subtitle,
            style: TextStyle(color: kBlack.withOpacity(0.8)),
          ),
        ),
      ],
    );
  }
}
