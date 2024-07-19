
import 'package:admin_you_need/widgets/constant_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../utility/constants.dart';
import 'components/add_service_form.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          primary: false,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
             
             // const SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      "Services",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding,
                      ),
                    ),
                    onPressed: () {
                      showAddCategoryForm(context, null);
                    },
                    icon: const Icon(Icons.add),
                    label: const Text("Add New"),
                  ),
                  const Gap(20),
                  IconButton(
                      onPressed: () {
                        //TODO: should complete getAllCategory
                      },
                      icon: const Icon(Icons.refresh)),
                ],
              ),
              const Gap(defaultPadding),
               buildFabricList(),
             
             
             // const CategoryListSection(),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      " ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding,
                      ),
                    ),
                    onPressed: () {
                      showAddCategoryForm(context, null);
                    },
                    icon: const Icon(Icons.add),
                    label: const Text("Add New"),
                  ),
                  const Gap(20),
                  IconButton(
                      onPressed: () {
                        //TODO: should complete getAllCategory
                      },
                      icon: const Icon(Icons.refresh)),
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }

    Column buildFabricList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getCustomFont("Notre collection de tissus", 20.sp, Colors.black, 1,
                fontWeight: FontWeight.w700),
            GestureDetector(
              onTap: () {
               // Constant.sendToNext(context, Routes.fabricCollectionRoute);
              },
              child: getCustomFont("Voir tous", 14.sp, Colors.black, 1,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
     /* 
                SizedBox(
                  height: 223.h,
                  child: controller.cloth.clothItems.isNotEmpty
                      ? ListView.builder(
                          padding: EdgeInsets.only(top: 20.h, bottom: 30.h),
                          itemCount: controller.cloth.clothItems.length,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                         
                            // ModelFabric modelFabric = fabricLists[index];
                            return GestureDetector(
                              onTap: () {
                               
                              },
                              child: Container(
                                width: 177.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: "#1A3F3F3F".toColor(),
                                          blurRadius: 32,
                                          offset: const Offset(-2, 5))
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    getVerSpace(6.h),
                                    Container(
                                      height: 100.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.h),
                                          image: model.images.isEmpty
                                              ? DecorationImage(
                                                  image: AssetImage(
                                                      "${Constant.assetImagePath}fabric1.png"),
                                                  fit: BoxFit.fill)
                                              : DecorationImage(
                                                  image: NetworkImage(
                                                      Api.imagesBaseUrl +
                                                          model.images.first
                                                              .contentUrl),
                                                  fit: BoxFit.fill)),
                                    ).paddingSymmetric(horizontal: 6.h),
                                    getVerSpace(8.h),
                                    getCustomFont(
                                            model.name, 16.sp, Colors.black, 1,
                                            fontWeight: FontWeight.w700,
                                            txtHeight: 1.5)
                                        .paddingSymmetric(horizontal: 12.h),
                                    getVerSpace(2.h),
                                    getCustomFont(
                                            "${model.price} ${Api.device}",
                                            14.sp,
                                            Colors.black,
                                            1,
                                            fontWeight: FontWeight.w400,
                                            txtHeight: 1.5)
                                        .paddingSymmetric(horizontal: 12.h)
                                  ],
                                ),
                              ).marginOnly(
                                  left: index == 0 ? 20.h : 0, right: 20.h),
                            );
                          },
                        )
                      : const EmptyWidget(text: "Aucune collection"),
                );
             
              */
      ],
    );
  }

}
