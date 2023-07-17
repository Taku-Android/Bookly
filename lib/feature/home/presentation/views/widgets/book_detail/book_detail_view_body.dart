import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/Styles.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/also_like_list_view.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/book_detail_title.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/buy_container.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail/custom_detail_view_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(
              left: kPrimaryPadding, right: kPrimaryPadding, ),
          child: CustomDetailViewAppBar(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .50,
            child: const CustomBookImage(),
          ),
        ),
        const BookDetailTitle(),
         Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 45),
          child: BuyContainer(onPriceTap: (){

          },
          onPreviewTap: (){

          },
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text('You can also like' , style: Styles.textStyle16White),
            ),
          ],
        ),

        const AlsoLikeListView(),


      ],
    );
  }
}








