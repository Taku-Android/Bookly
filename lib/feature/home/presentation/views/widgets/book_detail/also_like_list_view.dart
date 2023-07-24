import 'package:bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly/feature/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/manager/similar_books/similar_books_state.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/also_like_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccess){
          var books = state.books ;
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  AlsoLikeListItem(imageUrl: books.items![index].volumeInfo!.imageLinks!.thumbnail!,);
                  }

              ),
            ),
          );
        }else if(state is SimilarBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const CircularProgressIndicator();
        }

      },
    );
  }
}
