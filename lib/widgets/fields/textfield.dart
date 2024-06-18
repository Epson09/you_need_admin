import 'package:admin_you_need/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool enabled;
  final double horizontalSize;
  final Widget? prefixIcon;
  final bool readOnly;
  final bool hasBorder;

  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final void Function()? onEditingComplete;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.inputType = TextInputType.text,
    this.controller,
    this.horizontalSize = 25.0,
    this.hasBorder = true,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.focusNode,
    this.enabled = true,
    this.inputFormatters,
    this.readOnly = false,
    this.validator,
    this.initialValue,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.onSaved,
    this.onChanged,
    this.prefixIcon,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalSize, vertical: 5.0),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        focusNode: focusNode,
        inputFormatters: inputFormatters,
        initialValue: initialValue,
        validator: validator,
        enabled: enabled,
        onTap: onTap,
        readOnly: readOnly,
        onSaved: onSaved,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        textInputAction: textInputAction,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        decoration: hasBorder
            ? InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kBlack),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kSubtitle),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kErrorColor),
                ),
                errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kErrorColor),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kSubtitle),
                ),
                prefixIcon: prefixIcon,
                counterText: "",
                hintText: hintText,
                iconColor: kBlue,
                prefixIconColor: kSubtitle,
                contentPadding: const EdgeInsets.all(20),
                hintStyle: const TextStyle(
                    color: kSubtitle,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              )
            : InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: kSubtitle)),
                focusedBorder: const UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kBlue),
                ),
                focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: kErrorColor),
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: kErrorColor),
                ),
                disabledBorder: const UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: kSubtitle, style: BorderStyle.solid),
                ),
                prefixIcon: prefixIcon,
                counterText: "",
                hintText: hintText,
                iconColor: kBlue,
                prefixIconColor: Colors.black26,
                contentPadding: const EdgeInsets.all(20),
                hintStyle: const TextStyle(
                    color: kSubtitle,
                    fontSize: 13.26,
                    fontWeight: FontWeight.w500),
              ),
      ),
    );
  }

  static InputDecoration myDecoration1(
      {required String hintText, Widget? prefixIcon}) {
    return InputDecoration(
      // labelText: labelText ,

      // hintText: labelText,

     enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: kSubtitle),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kSubtitle),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kErrorColor),
                ),
                errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kErrorColor),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kSubtitle),
                ),

      counterText: "",
      prefixIcon: prefixIcon,
      hintText: hintText.toUpperCase(),
      iconColor: kBlue,
      prefixIconColor: Colors.black26,
      contentPadding: const EdgeInsets.all(12),
      hintStyle: const TextStyle(
          color: kSubtitle,
          fontSize: 13,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis),
    );
  }

  static InputDecoration myDecoration(
      {required String hintText, Widget? prefixIcon}) {
    return InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: kGreyColor),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kSubtitle),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kErrorColor),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kErrorColor),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kSubtitle),
      ),
      prefixIcon: prefixIcon,
      counterText: "",
      hintText: hintText,
      iconColor: kBlue,
      prefixIconColor: kSubtitle,
      contentPadding: const EdgeInsets.all(20),
      hintStyle: const TextStyle(
          color: kSubtitle, fontSize: 13.26, fontWeight: FontWeight.w500),
    );
 
  
  
  }


  static InputDecoration myDecoration2(
      {required String hintText, Widget? prefixIcon}) {
    return InputDecoration(
      // labelText: labelText ,

      // hintText: labelText,

     enabledBorder: const OutlineInputBorder(

                  borderSide: BorderSide(color: kSubtitle),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kSubtitle),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kErrorColor),
                ),
                errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: kErrorColor),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                
                  borderSide: BorderSide(color: kSubtitle),
                ),

      counterText: "",
      prefixIcon: prefixIcon,
      hintText: hintText.toUpperCase(),
      iconColor: kBlue,
      prefixIconColor: Colors.black26,
      contentPadding: const EdgeInsets.only(top:10,bottom: 10),
      
      hintStyle: const TextStyle(
        
          color: kSubtitle,
          
          fontSize: 13,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis),
          
    );
  }
  /*
  Comment faire si le hintText d' un TextFormField a de debordement horizontal RenderFlex in question is: RenderFlex#cfd7d OVERFLOWING:
   */


}
