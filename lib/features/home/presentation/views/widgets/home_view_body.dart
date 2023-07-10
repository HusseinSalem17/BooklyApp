import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbBar(),
        //must be specified height or let it expand as needed (will get Error if didn't use it (Expanded or but it in SizedBox))
        FeaturedBooksListView(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Best Seller',
            style: Styles.titelMedium,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            FeaturedListViewItem(
              borderRadiusSize: 8,
              aspectRatioSize: 0.625,
            ),
            Column(),
          ],
        ),
      ),
    );
  }
}
