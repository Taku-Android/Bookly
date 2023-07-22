import 'package:bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly/feature/home/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/feature/home/presentation/manager/feature_books_cubit/feature_books_state.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if(state is FeatureBooksSuccess){
          var books = state.books.items ;
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .width * .55,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: books!.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: CustomBookImage(imageLink: books[index].volumeInfo!.imageLinks!.thumbnail!),
                  );
                }),
          );
        }else if(state is FeatureBooksFailure) {
          return Center(child: CustomErrorWidget(errMessage: state.errMessage));
        }else{
          return const Center(child: CircularProgressIndicator());
        }

      },
    );
  }
}