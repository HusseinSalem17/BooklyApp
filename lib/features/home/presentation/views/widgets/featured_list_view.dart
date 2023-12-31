import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              //to remove shadow in scrolling and make scrolling easier
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        //send data in extra like (args)
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                      borderRadiusSize: 16,
                      aspectRatioSize: 0.65,
                    ),
                  ),
                );
              }),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

/*
الكولمن من الويدجت الي بتسمح ان شايلد ياسكبند زي ما هو عايز بس عشان يعمل كدا زي ما هو عايز لازم احطه جوا اكسباند ويدجت عشان ياكسبند
الي هو ياخد المساحه الي هو عايزه واليست فيو من الويدجت الي بتحتاج انها تاكسبند لانها تعرض عدد معين من الشيلد متعرفش عددهم فتاسكبند عشان تعرضهم
فلوقتي عشان  استخدمها جوا كولمن فهي ياما فوق ياما تحت مجموعه من الشيلد يعني في حاجات بتحد الطول بتاعها فكدا مشكله لازم اقول لليست فيو انها هتاكسبند
الحل اتاني بقي انها مخليهاش تاكسبند وتاخد طول معين الي تستخدمه ودا بالسيزبوكس
*/
