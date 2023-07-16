import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    //CustomScrollView => to make nestedScroll
    return const CustomScrollView(
      //slivers => any widget that i want to scroll (by default scroll horzonitaly)(must put sliver no widget directly)
      //so put widget inside sliver
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbBar(),
              //must be specified height or let it expand as needed (will get Error if didn't use it (Expanded or but it in SizedBox))
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}

/*
CustomScrollView (SliverToBoxAdapter)
  show all items like column (but not the items scroll) so i can scroll all the ui so to solver problem of listView.builder
  shrinkWrap:true (to take the size of childs and not be scrollable and just items with fixed height)
  physics: const NeverScrollableScrollPhysics() (to prevent scroll because CustomScrollView is scrollable)

  SLiverFillRemaining (if the listView is last item)
    so can use expanded as well and don't build all items once(shrinkWrap), so the app will be better performance

*/
