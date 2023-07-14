import 'package:bookly/feature/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // when using custom scroll view
        // u need to make that shrink wrap and not Expanded this to tell him take a space
        // of your items
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // and now u cant make it scroll and the custom also scroll so use physics
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BestSellerListItem(),
          );
        });
  }
}
