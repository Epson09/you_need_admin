import 'package:admin_you_need/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenu extends StatelessWidget {
  // ignore: use_super_parameters
  const ProfileMenu({
    key,
    required this.text,
    required this.icon,
    required this.press,
    this.nicon,  this.color,
  }) : super(key: key);

  final String text, icon;
  final Icon? nicon;
  final VoidCallback press;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: kBackgroundColor.withOpacity(0.3),
              offset: const Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 8,
            ),
            BoxShadow(
              color: kBackgroundColor.withOpacity(0.5),
              offset: const Offset(-4, -4),
              blurRadius: 10,
              spreadRadius: 8,
            ),
          ],
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(17),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: kBackgroundColor,
          ),
          onPressed: press,
          child: Row(
            children: [
              Image.asset(
                icon,
                width: 20,
                height: 20,
                color: color,
              ),
              const SizedBox(width: 20),
              Expanded(
                  child: Text(
                text,
                style: const TextStyle(color: kBlack),
              )),
              const Icon(
                Icons.arrow_forward_ios,
                color: kBlack,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilMenu extends StatelessWidget {
  // ignore: use_super_parameters
  const ProfilMenu({
    key,
    required this.text,
    required this.icon,
    required this.press,
    this.nicon,
  }) : super(key: key);

  final String text, icon;
  final Icon? nicon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: kBackgroundColor.withOpacity(0.3),
              offset: const Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 8,
            ),
            BoxShadow(
              color: kBackgroundColor.withOpacity(0.5),
              offset: const Offset(-4, -4),
              blurRadius: 10,
              spreadRadius: 8,
            ),
          ],
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(17),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: kBackgroundColor,
          ),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
                height: 16,
              ),
              const SizedBox(width: 20),
              Expanded(
                  child: Text(
                text,
                style: const TextStyle(color: kBlack),
              )),
              const Icon(
                Icons.arrow_forward_ios,
                color: kBlack,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
