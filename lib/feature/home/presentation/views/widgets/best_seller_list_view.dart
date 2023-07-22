import 'package:bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly/feature/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/feature/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){
          var books = state.books.items! ;
          return ListView.builder(
            // when using custom scroll view
            // u need to make that shrink wrap and not Expanded this to tell him take a space
            // of your items
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // and now u cant make it scroll and the custom also scroll so use physics
              padding: EdgeInsets.zero,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: BookListItem(book: books[index]),
                );
              });
        }else if (state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const Center( child:  CircularProgressIndicator(),);
        }

      },
    );
  }
}
