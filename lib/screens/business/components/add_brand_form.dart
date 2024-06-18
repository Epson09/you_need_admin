import 'package:admin_you_need/data/models/business/business.dart';

import '../../../data/models/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../utility/constants.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_text_field.dart';

class BrandSubmitForm extends StatelessWidget {
  final BusinessItem? brand;

  const BrandSubmitForm({super.key, this.brand});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    SubCategory subSelected = demoSubCategories.first;
    // context.brandProvider.setDataForUpdateBrand(brand);
    return SingleChildScrollView(
      child: Form(
        key: GlobalKey(),
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          width: size.width * 0.5,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(defaultPadding),
              Row(
                children: [
                  Expanded(
                    child: CustomDropdown(
                      initialValue: subSelected,
                      items: demoSubCategories,
                      hintText: subSelected.name ??
                          'Select Sub Category',
                      displayItem: (SubCategory? subCategory) =>
                          subCategory?.name ?? '',
                      onChanged: (newValue) {},
                      validator: (value) {
                        if (value == null) {
                          return 'Please select a Sub Category';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                      controller: TextEditingController(),
                      labelText: 'Brand Name',
                      onSave: (val) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a brand name';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              Gap(defaultPadding * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: secondaryColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the popup
                    },
                    child: Text('Cancel'),
                  ),
                  SizedBox(width: defaultPadding),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () {
                      // Validate and save the form
                      /*  if (context.brandProvider.addBrandFormKey.currentState!.validate()) {
                        context.brandProvider.addBrandFormKey.currentState!.save();
                        //TODO: should complete call submitBrand
                        Navigator.of(context).pop();
                      } */
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// How to show the category popup
void showBrandForm(BuildContext context, BusinessItem? brand) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: bgColor,
        title: Center(
            child: Text('Add Brand'.toUpperCase(),
                style: TextStyle(color: primaryColor))),
        content: BrandSubmitForm(
          brand: brand,
        ),
      );
    },
  );
}
