
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utility/constants.dart';
import '../../../data/models/product_summery_info.dart';


class ProductSummeryCard extends StatelessWidget {
  const ProductSummeryCard({
    super.key,
    required this.info, required this.onTap,
  });

  final ProductSummeryInfo info;
  final Function(String?) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap(info.title);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: info.color!.withOpacity(0.1),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: SvgPicture.asset(
                      info.svgSrc!,
                      
                      
                      colorFilter: ColorFilter.mode(
                          info.color ?? Colors.black, BlendMode.srcIn),
                    ),
                  ),
                   /*  PopupMenuButton(
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
                                  color: kWhite,
                                ),
                                itemBuilder: (context) => [
                                  const PopupMenuItem(
                                    value: 0,
                                    child: Text(
                                      "consulter",
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
                       */     
                 const Icon(Icons.more_vert, color: Colors.white54)
                ],
              ),
            ),
            Expanded(
              child: Text(
                info.title!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: ProgressLine(
                color: info.color,
                percentage: info.percentage,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${info.productsCount} ${info.subtitle}",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    this.color = primaryColor,
    required this.percentage,
  });

  final Color? color;
  final double? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
