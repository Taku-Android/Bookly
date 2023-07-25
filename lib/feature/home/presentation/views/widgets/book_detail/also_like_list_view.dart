import 'package:bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly/feature/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/manager/similar_books/similar_books_state.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/also_like_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_routes.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccess){
          var books = state.books.items ;
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ListView.builder(
                  itemCount: books!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  GestureDetector(
                        onTap: (){
                          GoRouter.of(context).pushReplacement(AppRoutes.kBookDetail , extra: books[index]  );
                        },
                        child: AlsoLikeListItem(imageUrl: books[index].volumeInfo!.imageLinks!.thumbnail!,));
                  }

              ),
            ),
          );
        }else if(state is SimilarBooksFailure){
          return Center(child: CustomErrorWidget(errMessage: state.errMessage));
        }else{
          return const Center(child: CircularProgressIndicator());
        }

      },
    );
  }
}
