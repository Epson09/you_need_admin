import 'package:admin_you_need/data/models/business/busi_cat.dart';
import 'package:admin_you_need/data/models/business/business.dart';
import 'package:admin_you_need/screens/business/components/add_brand_form.dart';

import 'package:flutter/material.dart';
import '../../../utility/color_list.dart';
import '../../../utility/constants.dart';

class BusinessListSection extends StatelessWidget {
  const BusinessListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return 
    
    Expanded(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: ListView.builder(
          itemCount: demoBusiness.length,
          itemBuilder: (context, index) {
            final business = demoBusiness[index];
            final category = demoBusicat.firstWhere((cat) => cat.id == business.categoryId);
            return ListTile(
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
                    icon: const Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

DataRow brandDataRow(BusinessItem brandInfo, BusiCat cat, int index,
    {Function? edit, Function? delete}) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: colors[index % colors.length],
                shape: BoxShape.circle,
              ),
              child: Text(index.toString(), textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(brandInfo.name),
            ),
          ],
        ),
      ),
      DataCell(Text(cat.name)),
      DataCell(Text(brandInfo.createdAt.toIso8601String())),
      DataCell(IconButton(
          onPressed: () {
            if (edit != null) edit();
          },
          icon: const Icon(
            Icons.edit,
            color: Colors.white,
          ))),
      DataCell(IconButton(
          onPressed: () {
            if (delete != null) delete();
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ))),
    ],
  );
}
