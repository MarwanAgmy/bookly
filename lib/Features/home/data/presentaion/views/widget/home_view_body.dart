import 'package:bookly/Features/home/data/presentaion/views/widget/best_seller_list_view.dart';
import 'package:bookly/Features/home/data/presentaion/views/widget/custom_app_bar.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPaddingHeight),
                child: CustomAppBar(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: FeaturedBooksListView(),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPaddingHeight),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHeight),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
