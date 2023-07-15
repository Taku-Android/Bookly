import 'package:bookly/feature/home/presentation/views/widgets/book_detail/also_like_list_item.dart';
import 'package:flutter/material.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context , index){
              return const AlsoLikeListItem();
            }

        ),
      ),
    );
  }
}
