import 'package:admin_you_need/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utility/constants.dart';

class CouponCodeHeader extends StatelessWidget {
  // ignore: use_super_parameters
  const CouponCodeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Spacer(flex: 2),
        Expanded(child: SearchField(
          onChange: (val) {
            //TODO: should complete  call filterCoupons
          },
        )),
        const Expanded(child: ProfileCard())
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kYellow,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Expanded(
             flex: 2,
            child: Row(
              children: [
                Expanded(
                 
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/profile_pic.png",
                        height: 38,
                      ),
                      const Expanded(
                          child: Text(
                        "Angelina Jolie",
                        overflow: TextOverflow.ellipsis,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            
            
            child: Icon(Icons.keyboard_arrow_down)),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  final Function(String) onChange;

  const SearchField({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: kBlack),
      decoration: InputDecoration(
        hintText: "Recherche",
        hintStyle: const TextStyle(color: kBlack),
        fillColor: kBackgroundColor,
        filled: true,
        
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kBlack,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kBlack, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kBlack),
            borderRadius: BorderRadius.circular(10)),
       errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kRed),
            borderRadius: BorderRadius.circular(10)),
      focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kBlack),
            borderRadius: BorderRadius.circular(10)),
      focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kErrorColor),
            borderRadius: BorderRadius.circular(10)),
      
       
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: const BoxDecoration(
              color: kBlue2,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
      onChanged: (value) {
        onChange(value);
      },
    );
  }
}
