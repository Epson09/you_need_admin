import 'package:flutter/material.dart';

//const kPrimaryColor = Color.fromARGB(255, 17, 97, 48);
 const String fontsFamily = "SF Pro Display";
const Color kWhite = Color(0xFFFFFFFF);
const Color kBlack = Color(0xFF2D3243);
const Color kYellow = Color(0xFFDDED6B);
Color buttonColor = "#EB7171".toColor();
Color bgColor = "#FFCFCF".toColor();
Color borderColor = "#DFDFDF".toColor();
Color hintColor = "#7E7E7E".toColor();
Color fieldBg = "#F4F4F4".toColor();
Color bgWhite = "#FDFDFD".toColor();
Color lightBorder = "#F1F1F1".toColor();
Color textHintColor = "#A5A4AA".toColor();


const Color kRed = Color(0xFFe74700);
const Color kBlue = Color(0xFF2596BE);
const Color kGreen = Color(0xFF148F7D);
const Color kBlue2 = Color(0xFF7C65FC);

const kErrorColor = Color(0XFFFF3333);
const kPrimary =  Color(0xFFFDCAFF);
const kSuccessColor = Color(0XFF4BB543);
const kSecondaryColor = Color(0XFFE23252);

const kBorderColor = Color(0XFF313638);
const kBackgroundColor = Color(0XFFE8E9EB);
const kCardColor = Color(0XFFFFFFFF);
const kMenuItemolor = Color(0XFF93A8AC);

const kSubtitle = Color(0xFF656565);
const kDarkColor = Color(0xFFD9D9D9);

const kAppbarColor = Color.fromARGB(255, 47, 224, 200);
const kTextColor = Color.fromARGB(255, 78, 173, 22);
const kTitleColor = Color(0XFF000000);
const kVioletColor = Color(0xff203152);
const kGreyColor = Color(0xffaeaeae);
const kGreyColor2 = Color(0xffE8E8E8);

///couleur status
///
const kCancelColor = Color(0xFF604464);
const kRefundedColor = Color(0xFF783535);
const kFaildedColor = Color(0xFFFF4500);
const kPending = Color(0xFF1e90ff);
const kSessionExpired =
    "Votre session est expirée. Veuillez vous connecter à nouveau.";
const kUserNofound =
    "Une erreur s'est produit lors de la récupération de votre compte";

const kServerNoWork =
    "le serveur est Temporairement hors service ou en panne, Veuillez patientez";

const double kDefaultPadding = 16.0;
const double kPaddingS = 8.0;
const double kPaddingM = 16.0;
const double kPaddingL = 15.0;
const kInternetError =
    "Vous semblez n'avoir aucun accès à internet. Connectez-vous à internet  et actualiser pour continuer.";
const String kimagePath = "assets/images/user.png";
const Duration kCardAnimationDuration = Duration(milliseconds: 300);
const Duration kButtonAnimationDuration = Duration(milliseconds: 400);
const Duration kRippleAnimationDuration = Duration(milliseconds: 300);
//GlobalKey<NavigatorState> navigator = GlobalKey();
final globalNavigatorKey = GlobalKey<NavigatorState>();

/* var warningAlertStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: true,
  descStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    fontStyle: FontStyle.normal,
  ),
  descTextAlign: TextAlign.center,
  isButtonVisible: true,
  animationDuration: const Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
    side: const BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: const TextStyle(color: kYellow, fontSize: 15),
  alertAlignment: Alignment.center,
);
 */
/* 
var errorAlertStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: true,
  isButtonVisible: false,
  descStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    fontStyle: FontStyle.normal,
  ),
  descTextAlign: TextAlign.center,
  animationDuration: const Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: const BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: const TextStyle(
    color: Colors.red,
  ),
  alertAlignment: Alignment.center,
);
 */

/* var successAlertStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: true,
  isOverlayTapDismiss: true,
  descStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    fontStyle: FontStyle.normal,
  ),
  descTextAlign: TextAlign.center,
  isButtonVisible: true,
  animationDuration: const Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: const BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: const TextStyle(color: kBlack, fontSize: 15),
  alertAlignment: Alignment.center,
);
var errorAlertStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: true,
  descStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    fontStyle: FontStyle.normal,
  ),
  descTextAlign: TextAlign.center,
  isButtonVisible: true,
  animationDuration: const Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: const BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: const TextStyle(color: kRed, fontSize: 15),
  alertAlignment: Alignment.center,
);

var warningAlerteStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: true,
  descStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: kBlack,
    fontStyle: FontStyle.normal,
  ),
  descTextAlign: TextAlign.center,
  // alertPadding: EdgeInsets.only(top: 25),
  descPadding: const EdgeInsets.symmetric(vertical: 20),
  isButtonVisible: false,

  animationDuration: const Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
    side: const BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: const TextStyle(color: kRed, fontSize: 15),
  alertAlignment: Alignment.center,
);

 */
extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
