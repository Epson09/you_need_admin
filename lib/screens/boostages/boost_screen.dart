import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/data/models/enum/enum_model.dart';
import 'package:admin_you_need/widgets/fields/textfield.dart';

import 'components/coupon_code_header.dart';
import 'components/boostage_list_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utility/constants.dart';

class BoostagesScreen extends StatefulWidget {
  const BoostagesScreen({super.key});

  @override
  State<BoostagesScreen> createState() => _BoostagesScreenState();
}

class _BoostagesScreenState extends State<BoostagesScreen> {
  @override
  Widget build(BuildContext context) {
    BoostageStatut statuSelected = demoBoostageStatuts.first;
    return SafeArea(
      child: Scaffold(
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
        backgroundColor: kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  // Spacer(flex: 2),
                  Expanded(
                      flex: 1,
                      child: SearchField(
                        onChange: (val) {
                          //TODO: should complete  call filterCoupons
                        },
                      )),

                      const SizedBox(width: 5,),
                  Expanded(
                    flex: 1,
                    child: DropdownButtonFormField<BoostageStatut>(
                      alignment: Alignment.center,
                      isExpanded: true,
                      decoration:
                          CustomTextField.myDecoration2(hintText: "Choisir"),
                      value: statuSelected,
                      items: demoBoostageStatuts.map((BoostageStatut boostage) {
                        return DropdownMenuItem<BoostageStatut>(
                          value: boostage,

                          alignment: Alignment.center,

                          child: Text(boostage.toString(), style: const TextStyle(color: kBlack),
                          textAlign: TextAlign.center,
                          ),
                        );
                      }).toList(),
                      style: const TextStyle(color: kBlack),
                      iconEnabledColor: kBlue2,
                      iconDisabledColor: kBlack,
                      dropdownColor: kWhite,
                    
                      onChanged: (BoostageStatut? newValue) {
                        /* setState(() {
                          selectedDate = newValue!;
                          groupedTransactions.clear();
                          transactionsAmount.clear();
                          groupedTransactions =
                              dataTransactionsType[selectedDate] ?? [];
                          groupedTransactions.forEach((element) {
                            if (!transactionsAmount.contains(element.amount)) {
                              transactionsAmount.add(element.amount);
                            }
                          });
                        });
                    
                        BlocProvider.of<TransactionCubit>(context)
                            .getTransactionsByType(
                                type: selectedConnexionTypeIndex == 0
                                    ? "deposit"
                                    : "transfert"); */
                      },
                    ),
                  ),
                ],
              ),

              // CouponCodeHeader(),
              const Gap(defaultPadding),
              const BoostageListSection()
            ],
          ),
        ),
      ),
    );
  }
}
