import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/data/models/user/user.dart';
import 'package:admin_you_need/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kPrimary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: unnecessary_null_comparison
              demoUsers.first == null
                  ? Container(
                      height: 130,
                      padding: const EdgeInsets.only(
                          top: 35, left: 8, right: 8, bottom: 10),
                      decoration: const BoxDecoration(
                        color: kYellow,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: kYellow,
                          boxShadow: [
                            BoxShadow(
                              color: kBlack.withOpacity(0.5),
                              offset: const Offset(-4, -4),
                              blurRadius: 10,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(4, 4),
                              blurRadius: 10,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                              12.0), // Adjust the border radius if needed
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: kBlack,
                                shape: BoxShape.circle,
                              ),
                              width: 55,
                              height: 55,
                              child: const Center(
                                child: Icon(
                                  Icons.person,
                                  size: 35,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  "••••••• ••••••••••",
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "•••••••••••••••••••",
                                  style: TextStyle(
                                    color: kPrimary,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))
                  : Container(
                      height: 130,
                      padding: const EdgeInsets.only(
                          top: 35, left: 8, right: 8, bottom: 10),
                      decoration: const BoxDecoration(
                        color: kYellow,
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: kYellow,
                          boxShadow: [
                            BoxShadow(
                              color: kWhite.withOpacity(0.5),
                              offset: const Offset(-4, -4),
                              blurRadius: 10,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(4, 4),
                              blurRadius: 10,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: kWhite,
                                shape: BoxShape.circle,
                              ),
                              width: 55,
                              height: 55,
                              child: demoUsers.first.image == null
                                  ? const Center(
                                      child: Icon(
                                        Icons.person,
                                        size: 35,
                                        color: kBlack,
                                      ),
                                    )
                                  : CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        "${demoUsers.first.image}",
                                      ),
                                    ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  "${demoUsers.first.lastname} ${demoUsers.first.firstname}",
                                  style: const TextStyle(
                                    color: kBlack,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.fade,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                demoUsers.first.email != null
                                    ? Text(
                                        "${demoUsers.first.email}",
                                        style: const TextStyle(
                                          color: kBlack,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      )
                                    : const SizedBox(),
                                // ignore: unnecessary_null_comparison
                                demoUsers.first.phone != null
                                    ? Text(
                                        demoUsers.first.phone,
                                        style: const TextStyle(
                                          color: kBlack,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProfileMenu(
                        text: "Mon wallet",
                        icon: "assets/icons/wallet.png",
                        press: () {
                          Navigator.pushNamed(context, "/wallet");
                        },
                      ),
                      ProfileMenu(
                        text: "Ajouter Service",
                        icon: "assets/icons/add.png",
                        press: () {
                          Navigator.pushNamed(context, "/category");
                        },
                      ),
                      ProfileMenu(
                        text: "Validations",
                        icon: "assets/icons/lamp-slash.png",
                        press: () {
                          Navigator.pushNamed(context, "/Coupon");
                        },
                        color: kBlack,
                      ),
                      ProfileMenu(
                        text: "Businesses",
                        icon: "assets/icons/order_history.png",
                        press: () {
                          Navigator.pushNamed(context, "/Brands");
                        },
                      ),
                      ProfileMenu(
                        text: "Clients",
                        icon: "assets/icons/user-octagon.png",
                        press: () {
                          Navigator.pushNamed(context, "/Variants");
                        },
                      ),

                      ProfileMenu(
                        text: "Paramètres",
                        icon: "assets/icons/settings.png",
                        press: () {
                          Navigator.pushNamed(context, "/settings");
                        },
                      ),
                      // ProfileMenu(
                      //   text: "A propos de nous",
                      //   icon: "assets/icons/info.png",
                      //   press: () async {
                      //     const url = 'https://afrilink.bj/a-propos';
                      //     if (await canLaunchUrl(Uri.parse(url))) {
                      //       await launchUrl(Uri.parse(url));
                      //     } else {
                      //       // displaySnackMsg(
                      //       //     'Vérifier votre connexion et réessayer!',
                      //       //     1);
                      //     }
                      //   },
                      // ),
                      const SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 60,
            decoration: const BoxDecoration(
              color: kWhite,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Center(
              child: SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    /*  Provider.of<LogoutProvider>(context, listen: false)
                            .onLogout(); */
                    // And navigte to login page
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/login',
                      (Route route) => route.isCurrent,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: TextStyle(color: kWhite),

                    // Button color
                    // Text and icon color
                    elevation: 2, // Adjust elevation for shadow
                    shadowColor: Colors.grey.shade400, // Shadow color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Adjust border radius
                    ),
                  ),
                  child: const Center(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.power_settings_new,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Text(
                            'Déconnexion',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: kWhite,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
