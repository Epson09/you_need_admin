import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/utility/constants.dart';
import 'package:flutter/material.dart';

/// SearchBar is the widget of the search bar
class SearchBarForm extends StatefulWidget {
  const SearchBarForm(
      {super.key,
      this.onChanged,
      required this.searchText,
      this.textSize = 18,  this.paddingHorizontal=20});
  final void Function(String)? onChanged;
  final String searchText;
  final double textSize;
  final double paddingHorizontal;

  @override
  State<SearchBarForm> createState() => _SearchBarFormState();
}

class _SearchBarFormState extends State<SearchBarForm> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        // width: 500.0,
        //height: 85.0,
         color:  secondaryColor,
        alignment: Alignment.center,
        transformAlignment: Alignment.center,
        child: Container(
          // width: 212,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(53),
              gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                secondaryColor,
               secondaryColor
              ],
            ),
              boxShadow: const [
              BoxShadow(
                color: secondaryColor,
                offset: Offset(-11.8, 0.8),
                blurRadius: 2,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: secondaryColor,
                offset: Offset(1.8, 1.8),
                blurRadius: 1,
                spreadRadius: 0.0,
              ),
            ],  
           
          ),
          child: TextFormField(
            controller: controller,
            onChanged: widget.onChanged,
            style: TextStyle(fontSize: widget.textSize),
            decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              hintText: "Recherche ${widget.searchText}",
              suffixIconColor: kYellow,
              prefixIconColor: kYellow,
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  controller.text = '';
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
