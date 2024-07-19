import 'package:admin_you_need/common/constants.dart';
import 'package:admin_you_need/data/models/business/business.dart';
import 'package:admin_you_need/screens/business/widgets/busi_card.dart';
import 'package:flutter/material.dart';
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
          backgroundColor: kYellow,
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
                  color: kYellow,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: kYellow,
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
                            style: TextStyle(
                                color: kBlack, fontWeight: FontWeight.w600),
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
                    //const Expanded(child:  BusinessListSection()),

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: demoBusiness.length,
                          itemBuilder: (context, index) {
                            final business = demoBusiness[index];
                            return BusiCard(
                              orderResponse: business,
                            );

                            /*    Container(
                              margin: EdgeInsets.symmetric(vertical: 10,),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: secondaryColor,borderRadius: BorderRadius.circular(15)),
                              child: ListTile(
                              
                              contentPadding: EdgeInsets.zero,
                              shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: kBlack,style: BorderStyle.solid,)),
                                leading: CircleAvatar(
                                  backgroundColor: colors[index % colors.length],
                                  child: Text((index + 1).toString()),
                                ),
                                title: Text(business.name),
                                subtitle: Text(category.name),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        showBrandForm(context, business);
                                      },
                                      icon: const Icon(Icons.edit),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        // TODO: should complete deleteBrand
                                      },
                                      icon: const Icon(Icons.delete,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ); 
                       
                        */
                          },
                        ),
                      ),
                    )
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
