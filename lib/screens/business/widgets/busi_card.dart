import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/data/models/business/business.dart';
import 'package:admin_you_need/data/models/enum/enum_model.dart';
import 'package:admin_you_need/utility/formatter.dart';
import 'package:admin_you_need/widgets/remote_image.dart';
import 'package:admin_you_need/widgets/text_custom.dart';
import 'package:flutter/material.dart';

class BusiCard extends StatelessWidget {
  final BusinessItem orderResponse;
  final VoidCallback? onPressed;

  const BusiCard({
    super.key,
    required this.orderResponse,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.symmetric(vertical: 7.0),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RemoteImage(
                      imgUrl: orderResponse.image != null
                          ? orderResponse.image!
                          : "",
                      errorUrl: 'assets/images/no-image.png',
                      height: 76.0,
                      width: 76.0,
                      radius: 12.0,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           TextCustom(
                            text: orderResponse.name,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: kWhite,
                          ),
                          const SizedBox(height: 8),
                          TextCustom(
                            text: orderResponse.place??"${orderResponse.address}",
                            fontSize: 12,
                            color: Fmt.convertHexToColor("#747474"),
                          ), 
                          const SizedBox(height: 8),
                           Text(
                            (orderResponse.status == BusinessStatus.succes)
                                ? "Vérifié"
                                : (orderResponse.status ==
                                        BusinessStatus.pending)
                                    ? "En cours de validation"
                                    : "Rejeté",
                            style: TextStyle(
                                color: (orderResponse.status ==
                                        BusinessStatus.succes)
                                    ? kSuccessColor
                                    : (orderResponse.status ==
                                            BusinessStatus.pending)
                                        ? kBlue2
                                        : kRed),
                          )
                      
                       
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chevron_right_outlined),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
