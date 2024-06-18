import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/data/models/enum/enum_model.dart';
import 'package:admin_you_need/data/models/transaction.dart';
import 'package:admin_you_need/utility/formatter.dart';
import 'package:admin_you_need/utility/mapper.dart';
import 'package:admin_you_need/widgets/toast_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.transaction,
    required this.isNewDate,
  });

  final Transaction transaction;
  final bool isNewDate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ToastWidget(
          body: Center(
              child: Text(
            "${transaction.description}",
            style: const TextStyle(
              color: kWhite,
            ),
            textAlign: TextAlign.center,
          )),
          duration: const Duration(seconds: 10),
          type: ToastType.basic,
        ).displayToast(context);
      },
      child: Column(
        children: [
          isNewDate
              ? Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade300,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 15),
                      child: Text(
                        Fmt.extractDateFromMilli(transaction.updatedAt.millisecondsSinceEpoch),
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                )
              : const SizedBox(),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 2, 15, 2),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        Mapper.transactionActionToName(transaction.type.toString()),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        Fmt.extractTimeFromMilli(transaction.updatedAt.millisecondsSinceEpoch),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color:kBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "${Fmt.formatTransactionAmount(transaction.type.name, transaction.amount.toInt())} F CFA",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: kBlack
                        //  color: Mapper.transactionTypeToColor(transaction.type),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Réference #${transaction.ticketId}",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: kBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
