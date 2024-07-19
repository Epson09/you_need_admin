
import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/common/size.dart';
import 'package:admin_you_need/routes/routes.dart';
import 'package:admin_you_need/screens/e-wallet_layout/e-wallet_layout_screen.dart';
import 'package:admin_you_need/utility/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveSizer(builder: (context, orientation, screen) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Admin Panel',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: kYellow,
        ),
        initialRoute: '/',
        home: const EWalletLayoutScreen(), //MainScreen(),

        onGenerateRoute: AppRouter.onGenerateRoute,
        routes: AppRouter.routes(context),

        // getPages: AppPages.routes,
      );
    });
  }
}
