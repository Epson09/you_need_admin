import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/screens/boostages/components/coupon_code_header.dart';

import 'components/notification_list_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utility/constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.only(
                top: 9,
                left: 12,
                right: 0,
                bottom: 10,
              ),
              child: Container(
                alignment: Alignment.center,

                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: kBackgroundColor,
                    width: 5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(4, 4),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.7),
                      offset: const Offset(-4, -4),
                      blurRadius: 10,
                    ),
                  ],
                ),
                // padding: const EdgeInsets.all(5),

                child: const Icon(
                  Icons.arrow_back,
                  color: kBlack,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          primary: false,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const CouponCodeHeader(),
              //const NotificationHeader(),
              const Gap(defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("My Notification",
                                  style: TextStyle(
                                      color: kBlack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                            ),
                            const Gap(20),
                            IconButton(
                                onPressed: () {
                                  //TODO: should complete call getAllNotifications
                                },
                                icon: const Icon(Icons.refresh)),
                          ],
                        ),
                        const Gap(defaultPadding),
                        const NotificationListSection(),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
