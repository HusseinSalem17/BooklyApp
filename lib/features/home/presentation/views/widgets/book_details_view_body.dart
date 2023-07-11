import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            //to save the aspect ratio of image (in all devices to be the aspect ratio be good for all devices)
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(
                borderRadiusSize: 20, aspectRatioSize: 2.7 / 4),
          )
        ],
      ),
    );
  }
}
