// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:admin_you_need/common/constants.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({
    Key? key,
    required this.isPasswordVisible,
    this.confirmation = false,
    this.hideVisibility = false,
     this.horizontalSize = 25.0,
    required this.onTap,
    this.hasBorder=true,
    this.validator,
    this.onSaved,
    this.prefixIcon,
    this.controller,
  }) : super(key: key);

  final bool isPasswordVisible;
    final double horizontalSize;
  final bool confirmation;
  final Widget? prefixIcon;
    final bool hasBorder;
  final bool hideVisibility;
  final VoidCallback onTap;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: horizontalSize, vertical: 5.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPasswordVisible,
        validator: validator,
        onSaved: onSaved,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration:hasBorder
        ? InputDecoration(
           enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kBlack),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: kBlue),
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
            borderSide: BorderSide(color: kBlack),
          ),
          prefixIconColor: Colors.black12,
          contentPadding: const EdgeInsets.all(20),
          hintStyle: const TextStyle(color: Colors.black12, fontSize: 13.26,fontWeight: FontWeight.w500
          ),
      
        
          prefixIcon: prefixIcon,
          suffixIcon: hideVisibility
              ? null
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: onTap,
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
          hintText: !confirmation ? 'Mot de passe'.toUpperCase() : 'Confirmez le mot de passe',
        
        
      ):InputDecoration(
           enabledBorder:
                   const UnderlineInputBorder(borderSide: BorderSide(color: kBlack)),
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
                  borderSide: BorderSide(color: kBlack, style: BorderStyle.solid),
                ),
          contentPadding: const EdgeInsets.all(20),
           prefixIconColor: Colors.black26,
          hintStyle: const TextStyle(
            color: kBlack, fontSize: 13.26,fontWeight: FontWeight.w500
          ),
      
        
          prefixIcon: prefixIcon,
          suffixIcon: hideVisibility
              ? null
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: onTap,
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
          hintText: !confirmation ? 'Mot de passe'.toUpperCase() : 'Confirmez le mot de passe',
        
        
      ),
      ),
    );
  }
}



class CustomResetPassword extends StatelessWidget {
  const CustomResetPassword({
    Key? key,
    required this.isPasswordVisible,
    this.confirmation = false,
    this.hideVisibility = false,
    required this.onTap,
    this.validator,
    this.onSaved,
    this.prefixIcon,
    this.controller,
  }) : super(key: key);

  final bool isPasswordVisible;
  final bool confirmation;
  final Icon? prefixIcon;
  final bool hideVisibility;
  final VoidCallback onTap;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPasswordVisible,
        validator: validator,
        onSaved: onSaved,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
           enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kBlack),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: kBlue),
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
            borderSide: BorderSide(color: kBlack),
          ),
          contentPadding: const EdgeInsets.all(20),
          hintStyle: const TextStyle(color: Colors.black26, fontSize: 13.26,fontWeight: FontWeight.w500
          ),
      
        
          prefixIcon: prefixIcon,
          suffixIcon: hideVisibility
              ? null
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: onTap,
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
          hintText: !confirmation ? 'Nouveau mot de passe'.toUpperCase() : 'Confirmez le mot de passe'.toUpperCase(),
        
        
      ),
      ),
    );
  }
}
