import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/screens/e-wallet_layout/e-dash_layout_controller.dart';
import 'package:admin_you_need/utility/formatter.dart';
import 'package:admin_you_need/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class EWalletLayoutScreen extends StatefulWidget {
  const EWalletLayoutScreen({super.key});

  @override
  State<EWalletLayoutScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<EWalletLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: kYellow,
        systemNavigationBarColor: kYellow,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child:  Scaffold(
              appBar:PreferredSize(
          preferredSize: const Size.fromHeight(68),
          child: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: kBlack,
                    size: 25,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            backgroundColor: kYellow,
            elevation: 1,
           
            centerTitle: true,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: kYellow,
              statusBarIconBrightness: Brightness.light,
            ),
           actions:  [
              /*  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                 child: ProfileCard(),
               ) */


               Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/Notifications");
                                },
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      alignment: Alignment.center,
                                      height: 24,
                                      width: 24,
                                      child: Image.asset("assets/icons/Frame.png",
                                          fit: BoxFit.cover),
                                    ),
                                    Positioned(
                                      left: 8,
                                      top: 0,
                                      child: Container(
                                          alignment: Alignment.bottomRight,
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          height: 20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: kErrorColor),
                                          child: const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "9+",
                                                style: TextStyle(
                                                    color: kWhite),
                                              ),
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ) 
            ],
          ),),

        drawer: const Drawer(
          child: DrawerWidget(),
        ),
              body: E_WalletLayoutController
                  .item[E_WalletLayoutController.currentIndex].screen,
              bottomNavigationBar: BottomNavigationBar(
                elevation: 0,
                backgroundColor: kBackgroundColor,
                
                iconSize: 24,
                selectedFontSize: 14,

                selectedIconTheme: const IconThemeData(

                    color: kYellow, size: 24),

                selectedLabelStyle: TextStyle(
                    color: Fmt.convertHexToColor('#ABBD2D'), fontSize: 12),
                unselectedItemColor: kSubtitle,
                selectedItemColor: Fmt.convertHexToColor('#ABBD2D'),
                unselectedFontSize: 12,
                unselectedIconTheme: IconThemeData(
                    opacity: 0.5, color: Fmt.convertHexToColor("#B3B3B3")),
                type: BottomNavigationBarType.fixed,
                unselectedLabelStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Fmt.convertHexToColor("#B3B3B3")),

                // fixedColor: kBackgroundColor,
                currentIndex: E_WalletLayoutController.currentIndex,
                onTap: (int index) {
                  setState(() {
                    E_WalletLayoutController.currentIndex = index;
                  });
                },
                items: E_WalletLayoutController.item
                    .map(
                      (e) => BottomNavigationBarItem(
                        icon: e.icon,
                        label: e.label,
                      ),
                    )
                    .toList(),
              ),
            )
    );
  }
}
