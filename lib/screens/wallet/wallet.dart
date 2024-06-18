
import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/screens/wallet/components/one_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  WalletScreenState createState() => WalletScreenState();
}

class WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: kYellow,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: const Text(
            'Portefeuille',
            style: TextStyle(
              fontSize: 19,
              color: kBlack,
              letterSpacing: 1,
            ),
          ),
          
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.only(
                top: 9,
                left: 12,
                right: 0,
                bottom: 10,
              ),
              child:
               Container(
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
             
                child: Icon(
                  Icons.arrow_back,
                  color: kBlack,
                ),
              ),
                     
                     
            ),
          ),
          automaticallyImplyLeading: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: kYellow,
          ),
          backgroundColor: kWhite,
          centerTitle: true,
          elevation: 1.0,
        ),
        body: const  WalletBody(),
      ),
    );
  }
}
