import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/data/models/enum/enum_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ToastWidget extends StatelessWidget {
  final ToastType? type;
  final Widget body;
  final Duration? duration;

  const ToastWidget({
    Key? key,
    this.type = ToastType.basic,
    required this.body,
    this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }

  displayToast(BuildContext context) {
    // Flutter Toast
    FToast fToast = FToast();

    fToast.init(context);

    fToast.showToast(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: type == ToastType.basic
              ? kAppbarColor
              : type == ToastType.error
                  ? kErrorColor
                  : kSuccessColor,
        ),
        child: body,
      ),
      gravity: ToastGravity.BOTTOM,
      toastDuration: duration ??
          const Duration(
            seconds: 2,
          ),
    );
  }
}
