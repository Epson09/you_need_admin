import 'package:admin_you_need/common/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import '../../utility/constants.dart';
import 'components/brand_header.dart';
class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.only(
                top: 9,
                left: 12,
                right: 0,
                bottom: 10,
              ),
              child: Container(
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

                child: const Icon(
                  Icons.arrow_back,
                  color: kBlack,
                ),
              ),
            ),
          ),
      
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const BrandHeader(),
              const Gap(defaultPadding),
               Expanded(
                 child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Text(
                                  "Les Businesses",
                                  style: TextStyle(color: kBlack, fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Gap(20),
                              IconButton(
                                  onPressed: () {
                                    //TODO: should complete call getAllBrands
                                  },
                                  icon: const Icon(Icons.refresh)),
                            ],
                          ),
                          const Gap(defaultPadding),
                        // const Expanded(child:  BusinessListSection()),
                        ],
                      ),
               ),
             
            ],
          ),
        ),
      ),
    );
  }
}
