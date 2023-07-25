import 'package:bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly/feature/search/presentation/manager/cubit/search_cubit.dart';
import 'package:bookly/feature/search/presentation/manager/cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/book_list_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if(state is SearchSuccess){
          var book = state.books.items;
          if(book == null  ||  book.isEmpty){
            return const Center(child: CustomErrorWidget(errMessage: 'Nothing to show'));

          }else{
            return ListView.builder(
              // when using custom scroll view
              // u need to make that shrink wrap and not Expanded this to tell him take a space
              // of your items
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // and now u cant make it scroll and the custom also scroll so use physics
                padding: EdgeInsets.zero,
                itemCount: book.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: BookListItem(book: book[index]  , ),
                  );
                });

          }


        }else if(state is SearchFailure){
          return Center(child: CustomErrorWidget(errMessage: state.errMessage));
        }else if(state is SearchLoading){
          return const Center(child: CircularProgressIndicator());
        }else{
          return const Center(child: CustomErrorWidget(errMessage: 'Nothing to show'));

        }

      },
    );
  }
}
