import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/common/size.dart';
import 'package:admin_you_need/data/models/user/user.dart';
import 'package:admin_you_need/screens/boostages/components/coupon_code_header.dart';
import 'package:admin_you_need/utility/constants.dart';
import 'package:admin_you_need/widgets/fields/textfield.dart';
import 'package:admin_you_need/widgets/remote_image.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  DateTime? selectedDate;
  List<DateTime> userDateTime = [];
  List<User> myusers = [];
  bool isReady = false;
  @override
  void initState() {
    for (var user in demoUsers) {
      userDateTime.add(user.createdAt!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedDate = userDateTime.first;
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Mes Utilisateurs",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        //TODO: should complete call getAllVariant
                      },
                      icon: const Icon(Icons.refresh)),
                ],
              ),

              //  const Expanded(child: UserListSection()),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              Expanded(
                  flex: 0,
                  child: Row(
                    children: [
                      // Spacer(flex: 2),
                      Expanded(
                          flex: 2,
                          child: SearchField(
                            onChange: (val) {
                              //TODO: should complete  call filterCoupons
                            },
                          )),
                          SizedBox(width: 5,),
                      Expanded(
                        child: DropdownButtonFormField<DateTime>(
                          alignment: Alignment.center,
                          isExpanded: true,
                          decoration: CustomTextField.myDecoration2(
                              hintText: "Choisir"),
                          value: selectedDate,
                          items: userDateTime.map((DateTime date) {
                            return DropdownMenuItem<DateTime>(
                              value: date,
                              alignment: Alignment.center,
                              child: Text(
                                  '${date.day}/${date.month}/${date.year}'),
                            );
                          }).toList(),
                          onChanged: (DateTime? newValue) {
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
                  )


                  ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              Expanded(
                  flex: 5,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: demoUsers.length,
                    itemBuilder: (context, index) {
                      final user = demoUsers[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: secondaryColor,
                              offset: Offset(-2.8, -5.8),
                              blurRadius: 2,
                              spreadRadius: 0.0,
                            ),
                            BoxShadow(
                              color: secondaryColor,
                              offset: Offset(1.8, 2.8),
                              blurRadius: 4,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RemoteImage(
                                  imgUrl: user.image ?? '',
                                  radius: 50,
                                  height: 38,
                                  width: 38,
                                ),
                                SizedBox(
                                  width: SizeConfig.screenWidth * 0.05,
                                ),
                                Text("${user.firstname} ${user.lastname}"),
                              ],
                            ),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
