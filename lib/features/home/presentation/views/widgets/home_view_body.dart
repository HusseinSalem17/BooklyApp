import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbBar(),
        //must be specified height or let it expand as needed (will get Error if didn't use it (Expanded or but it in SizedBox))
        FeaturedBooksListView()
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FeaturedListViewItem(),
          );
        }),
      ),
    );
  }
}
/*
الكولمن من الويدجت الي بتسمح ان شايلد ياسكبند زي ما هو عايز بس عشان يعمل كدا زي ما هو عايز لازم احطه جوا اكسباند ويدجت عشان ياكسبند
الي هو ياخد المساحه الي هو عايزه واليست فيو من الويدجت الي بتحتاج انها تاكسبند لانها تعرض عدد معين من الشيلد متعرفش عددهم فتاسكبند عشان تعرضهم
فلوقتي عشان  استخدمها جوا كولمن فهي ياما فوق ياما تحت مجموعه من الشيلد يعني في حاجات بتحد الطول بتاعها فكدا مشكله لازم اقول لليست فيو انها هتاكسبند
الحل اتاني بقي انها مخليهاش تاكسبند وتاخد طول معين الي تستخدمه ودا بالسيزبوكس
*/
