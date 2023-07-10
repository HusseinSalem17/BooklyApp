import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    //to save the image (the aspect ration of image and be responsive)
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      //to change the aspect ratio of image respect for width (sizedBox بدي قيمه وهي تظبط القيمه التانيه علي اساس القميه دي)
      child: AspectRatio(
        //width / height
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
