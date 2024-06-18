import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/data/models/product.dart';
import 'package:admin_you_need/screens/wallet/widgets/card_label.dart';
import 'package:admin_you_need/widgets/remote_image.dart';

import '../../../data/models/coupon.dart';
import 'package:flutter/material.dart';
import '../../../utility/color_list.dart';
import '../../../utility/constants.dart';

class BoostageListSection extends StatefulWidget {
  const BoostageListSection({
    super.key,
  });

  @override
  State<BoostageListSection> createState() => _BoostageListSectionState();
}

class _BoostageListSectionState extends State<BoostageListSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
      //  color: kWhite,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Les Boostages",
            style: TextStyle(color: kBlack, fontWeight: FontWeight.w700)
          ),

          ...List.generate( demoProduct.length, (index) =>  Card(
                                margin: const EdgeInsets.all(8),
          
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      RemoteImage(
                                        imgUrl: demoProduct[index].images?.first.url ?? '',
                                        height: 60.0,
                                        width: 60.0,
                                        radius: 10.0,
                                      ),
                                      const SizedBox(width: 15),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              demoProduct[index].name ?? '',
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const CardLabels(
                                              color: kYellow,
                                              data: "name",
                                              icon: Icons.category,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),

    ],
      ),
    );
  }
}

DataRow couponDataRow(Coupon coupon, int index,
    {Function? edit, Function? delete}) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: colors[index % colors.length],
                shape: BoxShape.circle,
              ),
              child: Text(index.toString(), textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(coupon.couponCode ?? '',
                  style: const TextStyle(color: kBlack)),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          coupon.discountType ?? '',
          style: const TextStyle(color: kBlack),
        ),
      ),
      DataCell(
        PopupMenuButton(
          onSelected: (int i) {
            switch (i) {
              case 0:
                //  context.read<NotificationProvider>().onReadAll();
                break;
              case 1:
                /* context
                              .read<NotificationProvider>()
                              .onFetchAll(true, DataControls());*/
                break;
              case 2:
                // context.read<NotificationProvider>().onDeleteAll();
                break;
              default:
            }
          },
          icon: const Icon(
            Icons.more_vert,
            color: kBlack,
          ),
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 0,
              child: Text(
                "Valider",
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const PopupMenuItem(
              value: 1,
              child: Text(
                'Supprimer',
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),

        /*  IconButton(
          onPressed: () {
            if (edit != null) edit();
          },
          icon:  Image.asset(
           "assets/icons/popupIcon1.png"
           ,height: 20,
           width: 20,
          )) */
      ),
    ],
  );
}
