import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

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