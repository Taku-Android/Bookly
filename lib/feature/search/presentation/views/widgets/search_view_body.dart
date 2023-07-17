import 'package:bookly/core/utils/Styles.dart';
import 'package:bookly/feature/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomSearchTextField(),

        Text('Results', style: Styles.textStyle30,),



      ],
    );
  }
}


