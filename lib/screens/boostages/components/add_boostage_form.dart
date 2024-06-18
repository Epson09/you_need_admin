import '../../../data/models/product.dart';
import '../../../data/models/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../data/models/category.dart';
import '../../../data/models/coupon.dart';
import '../../../utility/constants.dart';
import '../../../widgets/custom_date_picker.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_text_field.dart';


class CouponSubmitForm extends StatefulWidget {
  final Coupon? coupon;

  const CouponSubmitForm({super.key, this.coupon});

  @override
  State<CouponSubmitForm> createState() => _CouponSubmitFormState();
}

class _CouponSubmitFormState extends State<CouponSubmitForm> {
   late LabeledGlobalKey<FormState> key;
   @override
  void initState() {
    key = LabeledGlobalKey<FormState>("register");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   // context.couponCodeProvider.setDataForUpdateCoupon(coupon);
    return SingleChildScrollView(
      child: Form(
        key: key,
        child: Container(
          width: size.width * 0.7,
          padding: const EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(defaultPadding),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller:TextEditingController(),
                      labelText: 'Coupon Code',
                      onSave: (val) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter coupon code';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomDropdown(
                      key: GlobalKey(),
                      hintText: 'Discount Type',
                      items: const ['fixed', 'percentage'],
                      //initialValue: context.couponCodeProvider.selectedDiscountType,
                      onChanged: (newValue) {
                       // context.couponCodeProvider.selectedDiscountType = newValue ?? 'fixed';
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select a discount type';
                        }
                        return null;
                      }, displayItem: (val ) => val,
                    ),
                  ),
                ],
              ),
              const Gap(defaultPadding),

              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: TextEditingController(),
                      labelText: 'Discount Amount',
                      inputType: TextInputType.number,
                      onSave: (val) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter discount amount';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                      controller: TextEditingController(),
                      labelText: 'Minimum Purchase Amount',
                      inputType: TextInputType.number,
                      onSave: (val) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select status';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),

              const Gap(defaultPadding),
              Row(
                children: [
                  Expanded(
                    child: CustomDatePicker(
                      labelText: 'Select Date',
                      controller: TextEditingController(),
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      onDateSelected: (DateTime date) {
                        print('Selected Date: $date');
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomDropdown(
                      key: GlobalKey(),
                      hintText: 'Status',
                      //initialValue: context.couponCodeProvider.selectedCouponStatus,
                      items: const ['active', 'inactive'],
                      displayItem: (val ) => val,
                      onChanged: (newValue) {
                       // context.couponCodeProvider.selectedCouponStatus = newValue ?? 'active';
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select status';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:  CustomDropdown(
                      hintText: 'Select category',
                         /*  initialValue: couponProvider.selectedCategory,
                          hintText: couponProvider.selectedCategory?.name ?? 'Select category',
                          */ items: demoCategories,
                          displayItem: (Category? category) => category?.name ?? '',
                          onChanged: (newValue) {
                            if (newValue != null) {
                            /*   couponProvider.selectedSubCategory = null;
                              couponProvider.selectedProduct = null;
                              couponProvider.selectedCategory = newValue;
                              couponProvider.updateUi(); */
                            }
                          },
                        )
                    
                  /*   Consumer<CouponCodeProvider>(
                      builder: (context, couponProvider, child) {
                        return 
                        
                        CustomDropdown(
                          initialValue: couponProvider.selectedCategory,
                          hintText: couponProvider.selectedCategory?.name ?? 'Select category',
                          items: context.dataProvider.categories,
                          displayItem: (Category? category) => category?.name ?? '',
                          onChanged: (newValue) {
                            if (newValue != null) {
                              couponProvider.selectedSubCategory = null;
                              couponProvider.selectedProduct = null;
                              couponProvider.selectedCategory = newValue;
                              couponProvider.updateUi();
                            }
                          },
                        );
                      },
                    ),
                  */
                  ),
                  Expanded(
                    child:   CustomDropdown(
                      hintText: 'Select sub category',
                        //  initialValue: couponProvider.selectedSubCategory,
                          //hintText: couponProvider.selectedSubCategory?.name ?? 'Select sub category',
                          items: demoSubCategories,
                          displayItem: (SubCategory? subCategory) => subCategory?.name ?? '',
                          onChanged: (newValue) {
                            if (newValue != null) {
                             /*  couponProvider.selectedCategory = null;
                              couponProvider.selectedProduct = null;
                              couponProvider.selectedSubCategory = newValue;
                              couponProvider.updateUi(); */
                            }
                          },
                        )
                    
                    
                     /* Consumer<CouponCodeProvider>(
                      builder: (context, couponProvider, child) {
                        return 
                        
                        CustomDropdown(
                          initialValue: couponProvider.selectedSubCategory,
                          hintText: couponProvider.selectedSubCategory?.name ?? 'Select sub category',
                          items: context.dataProvider.subCategories,
                          displayItem: (SubCategory? subCategory) => subCategory?.name ?? '',
                          onChanged: (newValue) {
                            if (newValue != null) {
                              couponProvider.selectedCategory = null;
                              couponProvider.selectedProduct = null;
                              couponProvider.selectedSubCategory = newValue;
                              couponProvider.updateUi();
                            }
                          },
                        );
                    
                    
                      },
                    ), */
                  ),
                  Expanded(
                    child:   CustomDropdown(
                         // initialValue: couponProvider.selectedProduct,
                        //  hintText: couponProvider.selectedProduct?.name ?? 'Select product',
                        hintText:  'Select product',
                          items: demoProduct,
                          displayItem: (Product? product) => product?.name ?? '',
                          onChanged: (newValue) {
                            if (newValue != null) {
                            /*   couponProvider.selectedCategory = null;
                              couponProvider.selectedSubCategory = null;
                              couponProvider.selectedProduct = newValue;
                              couponProvider.updateUi(); */
                            }
                          },
                        )
                     
                    
                    /* Consumer<CouponCodeProvider>(
                      builder: (context, couponProvider, child) {
                        return 
                        CustomDropdown(
                          initialValue: couponProvider.selectedProduct,
                          hintText: couponProvider.selectedProduct?.name ?? 'Select product',
                          items: context.dataProvider.products,
                          displayItem: (Product? product) => product?.name ?? '',
                          onChanged: (newValue) {
                            if (newValue != null) {
                              couponProvider.selectedCategory = null;
                              couponProvider.selectedSubCategory = null;
                              couponProvider.selectedProduct = newValue;
                              couponProvider.updateUi();
                            }
                          },
                        );
                     
                      },
                    ), */
                  ),
                ],
              ),
              const Gap(defaultPadding),
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
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: defaultPadding),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () {
                      // Validate and save the form
                    /*   if (context.couponCodeProvider.addCouponFormKey.currentState!.validate()) {
                        context.couponCodeProvider.addCouponFormKey.currentState!.save();
                        //TODO: should complete call  submitCoupon
                        Navigator.of(context).pop();
                      } */
                    },
                    child: const Text('Submit'),
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

// How to show the popup
void showAddCouponForm(BuildContext context, Coupon? coupon) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: bgColor,
        title: Center(child: Text('Add Coupon'.toUpperCase(), style: const TextStyle(color: primaryColor))),
        content: CouponSubmitForm(coupon: coupon),
      );
    },
  );
}
