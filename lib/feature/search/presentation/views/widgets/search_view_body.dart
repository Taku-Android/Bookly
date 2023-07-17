import 'package:bookly/core/utils/Styles.dart';
import 'package:bookly/feature/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/feature/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return

        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children:  [
                   const CustomSearchTextField(),

                   Text('Results', style: Styles.textStyle30.copyWith(
                     fontWeight: FontWeight.w700
                   ),),
                ],
              ),
            ),

             const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchListView(),
              ),
            )
          ],
        );



  }
}





