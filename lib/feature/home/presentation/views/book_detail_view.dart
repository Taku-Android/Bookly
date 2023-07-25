import 'package:bookly/feature/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/book_detail_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/model/Items.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView({super.key, required this.book,  });

  final Items book ;

  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      widget.book.volumeInfo!.categories![0]
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetailViewBody(book: widget.book,)),
    );
  }
}


