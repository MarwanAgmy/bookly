import 'package:bookly/Features/home/data/presentaion/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/data/presentaion/views/widget/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: CustomBookImageItem(),
            ),
          ],
        ),
      ),
    );
  }
}
