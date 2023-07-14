
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/book_detail_title.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/custom_detail_view_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        const Padding(
          padding: EdgeInsets.only(left: kPrimaryPadding,
              right: kPrimaryPadding ,
              top: 45),
          child: CustomDetailViewAppBar(),),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .55,
                child: AspectRatio(
                  aspectRatio: 3/4,
                  child: Container(
                    decoration:  BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image:  const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AssetsPaths.book1) , )
                    ),
                  ),
                ),
              ),
            ),

        const BookDetailTitle(),

      ],
    );
  }
}






