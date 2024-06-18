import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/common/size.dart';
import 'package:admin_you_need/data/models/transaction.dart';
import 'package:admin_you_need/screens/wallet/widgets/see_more_section.dart';
import 'package:admin_you_need/screens/wallet/widgets/tansact_card.dart';
import 'package:admin_you_need/screens/wallet/widgets/wallet_card.dart';
import 'package:admin_you_need/utility/formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class WalletBody extends StatefulWidget {
  const WalletBody({super.key});

  @override
  State<WalletBody> createState() => _WalletBodyState();
}

class _WalletBodyState extends State<WalletBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: ResponsiveSizer(builder: (context, orientation, screeType) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WalletDashboardCard(
                    isLoading: false,
                    background: kBlue2,
                    width: 67.w,
                    height: 19.h,
                    textData: "Solde",
                    child: Center(
                      child: Text(
                        "${NumberFormat.decimalPattern('fr').format(520000)} F CFA",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18.sp,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kYellow,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(2, 2),
                              blurRadius: 2,
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.7),
                              offset: const Offset(-2, -2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kBlue2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadowColor:
                                Colors.transparent, // No default shadow
                            padding: EdgeInsets.zero, // Remove default padding
                          ),
                          child: SizedBox(
                            width: 18.w,
                            height: 40,
                            child: const Center(
                              child: Text(
                                "Dépôts",
                                style: TextStyle(
                                  color: kWhite,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kYellow,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(2, 2),
                              blurRadius: 2,
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.7),
                              offset: const Offset(-2, -2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kYellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadowColor:
                                Colors.transparent, 
                            padding: EdgeInsets.zero,
                          ),
                          child: SizedBox(
                            width: 18.w,
                            height: 40,
                            child: const Center(
                              child: Text(
                                "Retraits",
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                await Navigator.pushNamed(context, "/view-transferts");
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Container(
                  padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: kYellow,
        borderRadius: BorderRadius.circular(8), // Adjust as needed
        boxShadow: [
          BoxShadow(
            color: kWhite.withOpacity(0.7),
            offset: Offset(-2, -2),
            blurRadius: 2,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(2, 2),
            blurRadius: 2,
          ),
        ],
      ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Padding(
                      padding: EdgeInsets.all(2.w),
                      child: const Center(
                        child: Text(
                          "Transferts",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              
              
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                  child: SizedBox(
                    width: SizeConfig.screenWidth,
                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(2.h, 3.w, 1.h, 3.w),
                      child: SectionTitle(
                        title: "Les transactions",
                        subtitle: "",
                        press: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        transacts.isNotEmpty
                            ? Column(
                                children: [
                                  ...List.generate(
                                    transacts.length,
                                    (i) {
                                      var current = Fmt.extractDateFromMilli(
                                          transacts[i]
                                              .createdAt
                                              .millisecondsSinceEpoch);
                                      var previous = '';
                                      if (i != 0) {
                                        previous = Fmt.extractDateFromMilli(
                                            transacts[i - 1]
                                                .createdAt
                                                .millisecondsSinceEpoch);
                                      }
                                      return TransactionTile(
                                        transaction: transacts[i],
                                        isNewDate:
                                            i == 0 ? true : current != previous,
                                      );
                                    },
                                  )
                                ],
                              )
                            : Container(
                                height: 200,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 70),
                                child: const Center(
                                  child: Text(
                                    "Vous n'avez encore effectué aucune transaction.",
                                    style: TextStyle(
                                      color: kBlack,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                                    ],
                                  ),
                  )),
            ),
          ],
        );
      }),
    );
  }
}
