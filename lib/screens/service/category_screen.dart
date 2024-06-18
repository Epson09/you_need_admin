import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utility/constants.dart';
import 'components/add_service_form.dart';
import 'components/category_list_section.dart';

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
             
              const SizedBox(height: defaultPadding),
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
              const CategoryListSection(),
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
             
            ],
          ),
        ),
      ),
    );
  }
}
