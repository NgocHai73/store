import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/brand_products_count.dart';
import '../../../../common/widgets/products/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers/brand_controller.dart';
import 'brand.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BrandController.instance;
    final brands = controller.getAllBrands();
    return Scaffold(
      appBar: const TAppBar(showBackArrowIcon: true, title: Text('Brand')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              /// Sub Categories
              const TSectionHeading(title: 'Brands'),
              const SizedBox(height: TSizes.spaceBtwItems),
              /// -- Brands
              TGridLayout(
                itemCount: brands.length,
                mainAxisExtent: 80,
                itemBuilder: (_, index) {
                  final brand = brands[index];
                  return TBrandWithProductsCount(
                    brand: brand,
                    showBorder: true,
                    onTap: () => Get.to(() => BrandScreen(brand: brand)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
