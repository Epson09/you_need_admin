import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/common/size.dart';
import 'package:admin_you_need/data/models/product.dart';
import 'package:admin_you_need/data/models/product_summery_info.dart';
import 'package:admin_you_need/screens/dashboard/components/chart.dart';
import 'package:admin_you_need/screens/dashboard/widgets/order_info_card.dart';
import 'package:admin_you_need/screens/dashboard/widgets/product_summery_card.dart';
import 'package:admin_you_need/screens/wallet/widgets/card_label.dart';
import 'package:admin_you_need/utility/constants.dart';
import 'package:admin_you_need/widgets/remote_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashHome extends StatefulWidget {
  const DashHome({super.key});

  @override
  DashHomeState createState() => DashHomeState();
}

class DashHomeState extends State<DashHome> {
  int totalProduct = 1;
  //TODO: should complete Make this product number dynamic bt calling calculateProductWithQuantity

  int outOfStockProduct = 0;
  int limitedStockProduct = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    totalProduct = 1;
    int otherStockProduct =
        totalProduct - outOfStockProduct - limitedStockProduct;

    List<ProductSummeryInfo> productSummeryItems = [
      ProductSummeryInfo(
          title: "Utilisateurs",
          productsCount: totalProduct,
          svgSrc: "assets/icons/Product.svg",
          color: primaryColor,
          percentage: 100,
          subtitle: "utilisateur(s)"),
      ProductSummeryInfo(
        title: "Businesses",
        productsCount: outOfStockProduct,
        svgSrc: "assets/icons/Product2.svg",
        color: kWhite,
        subtitle: "businesse(s)",
        percentage:
            totalProduct != 0 ? (outOfStockProduct / totalProduct) * 100 : 0,
      ),
      ProductSummeryInfo(
        title: "Transactions",
        productsCount: limitedStockProduct,
        svgSrc: "assets/icons/Product3.svg",
        color: kFaildedColor,
        subtitle: "transaction(s)",
        percentage:
            totalProduct != 0 ? (limitedStockProduct / totalProduct) * 100 : 0,
      ),
      ProductSummeryInfo(
        title: "Validations",
        productsCount: otherStockProduct,
        subtitle: 'validation',
        svgSrc: "assets/icons/Product4.svg",
        color: const Color(0xFF47e228),
        percentage:
            totalProduct != 0 ? (otherStockProduct / totalProduct) * 100 : 0,
      ),
    ];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: kYellow,
        systemNavigationBarColor: kWhite,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: CustomScrollView(
            slivers: [
              SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ProductSummeryCard(
                    info: productSummeryItems[index],
                    onTap: (productType) {
                      Navigator.pushNamed(context, "/Variants");
                      //TODO: should complete call filterProductsByQuantity
                    },
                  );
                }, childCount: productSummeryItems.length),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.5, crossAxisCount: 2),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: SizeConfig.screenHeight / 1.5,
                      margin: const EdgeInsets.all(8),
                      
                      decoration: const BoxDecoration(
                        color: kYellow,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Les Demandes",
                                  style: TextStyle(color: kBlack, fontWeight: FontWeight.w600),
                                ),

                                 Text(
                                  "En cours",
                                  style: TextStyle(color: kBlack, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: demoProduct.length,
                              itemBuilder: (context, index) {
                                final prod = demoProduct[index];
                                return 
                                Card(
                                  margin: const EdgeInsets.all(8),

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        RemoteImage(
                                          imgUrl: prod.images?.first.url ?? '',
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
                                                prod.name ?? '',
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
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const OrderDetailsSection()
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class OrderDetailsSection extends StatefulWidget {
  const OrderDetailsSection({
    super.key,
  });

  @override
  State<OrderDetailsSection> createState() => _OrderDetailsSectionState();
}

class _OrderDetailsSectionState extends State<OrderDetailsSection> {
  int totalOrder = 20;
  int pendingOrder = 10;
  int processingOrder = 2;
  int cancelledOrder = 3;
  int shippedOrder = 2;
  int deliveredOrder = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Statistiques",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Chart(),
          OrderInfoCard(
            svgSrc: "assets/icons/delivery1.svg",
            title: "Toutes les demandes",
            totalOrder: totalOrder,
          ),
          OrderInfoCard(
            svgSrc: "assets/icons/delivery5.svg",
            title: "Demandes en cours",
            totalOrder: pendingOrder,
          ),
          OrderInfoCard(
            svgSrc: "assets/icons/delivery6.svg",
            title: "Demandes traitées",
            totalOrder: processingOrder,
          ),
          OrderInfoCard(
            svgSrc: "assets/icons/delivery2.svg",
            title: "Demandes rejétées",
            totalOrder: cancelledOrder,
          ),
          /* OrderInfoCard(
                svgSrc: "assets/icons/delivery4.svg",
                title: "Shipped Orders",
                totalOrder: shippedOrder,
              ),
              OrderInfoCard(
                svgSrc: "assets/icons/delivery3.svg",
                title: "Delivered Orders",
                totalOrder: deliveredOrder,
              ), */
        ],
      ),
    );
  }
}
