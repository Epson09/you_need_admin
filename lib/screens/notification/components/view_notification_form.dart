import 'package:admin_you_need/data/models/notification_result.dart';

import '../../../data/models/my_notification.dart';
import '../../../utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'notification_statics_card.dart';

class ViewNotificationForm extends StatelessWidget {
  final MyNotification? notification;

  const ViewNotificationForm({super.key, this.notification});

  @override
  Widget build(BuildContext context) {
    int totalSend = demoNotificationResults.first.successDelivery ?? 0;
    int totalOpened = demoNotificationResults.first.openedNotification ?? 0;
    int totalFailed = demoNotificationResults.first.failedDelivery ?? 0;
    int totalError = demoNotificationResults.first.erroredDelivery ?? 0;
    double calculatePercentage(int notificationCount) {
      if (totalSend == 0) {
        return 0;
      } else {
        return (notificationCount / totalSend) * 100;
      }
    }

    var size = MediaQuery.of(context).size;
    //TODO: should complete getNotificationInfo
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        width: size.width * 0.5, // Adjust width based on screen size
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(notification?.title ?? 'N/A',
                    style: const TextStyle(fontSize: 16)),
              ],
            ),
            const Gap(10),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor, // Light grey background to stand out
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                    color: Colors.blueAccent), // Blue border for emphasis
              ),
              child:     Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NotificationCard(
                        text: 'Total Send',
                        color: Colors.blue,
                        number: totalSend,
                        percentage: calculatePercentage(totalSend),
                      ),
                      NotificationCard(
                        text: 'Total Opened',
                        color: Colors.green,
                        number: totalOpened,
                        percentage: calculatePercentage(totalOpened),
                      ),
                      NotificationCard(
                        text: 'Total Failed',
                        color: Colors.red,
                        number: totalFailed,
                        percentage: calculatePercentage(totalFailed),
                      ),
                      NotificationCard(
                        text: 'Total Error',
                        color: Colors.yellow,
                        number: totalError,
                        percentage: calculatePercentage(totalError),
                      ),
                    ],
                  )
                
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: secondaryColor),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// How to show the order popup
void viewNotificationStatics(
    BuildContext context, MyNotification? notification) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: bgColor,
        title: Center(
            child: Text('Notification Statics'.toUpperCase(),
                style: const TextStyle(color: primaryColor))),
        content: ViewNotificationForm(notification: notification),
      );
    },
  );
}
