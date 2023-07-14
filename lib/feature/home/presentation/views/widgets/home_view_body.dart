import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/Styles.dart';
import 'package:bookly/feature/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: kPrimaryPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 20,
                ),
                Text('Best Seller', style: Styles.titleMedium),
                SizedBox(
                  height: 20,
                ),
               // BestSellerListView()
              ],
            ),
          ),
        ) ,

        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: kPrimaryPadding),
            child: BestSellerListView(),
          ),
        )


      ],
    );
  }
}
