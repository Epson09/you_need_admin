
import 'package:admin_you_need/screens/boostages/components/coupon_code_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrandHeader extends StatelessWidget {
  const BrandHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       
        Expanded(child: SearchField(
          onChange: (val) {
            //TODO: should complete call filterBrands
          },
        )),
       const Expanded(child:  ProfileCard())
      ],
    );
  }
}
