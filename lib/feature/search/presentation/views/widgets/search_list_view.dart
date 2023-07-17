import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_list_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

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
            child: BookListItem(),
          );
        });
  }
}
