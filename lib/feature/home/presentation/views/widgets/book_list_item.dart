import 'package:bookly/core/utils/Styles.dart';
import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/feature/home/data/model/Items.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_small_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({super.key, required this.book});

  final Items book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetail , extra: book  );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: 90,
                child: CustomSmallImage(
                  imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                )),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    book.volumeInfo!.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.bookTitle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    book.volumeInfo!.authors![0],
                    style: Styles.textStyle16,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: Styles.textStyle20,
                      ),
                      const Spacer(),
                      // Row(
                      //   children:  [
                      //     Icon(
                      //       Icons.star,
                      //       color: Colors.yellow,
                      //     ),
                      //     Text(
                      //       book.volumeInfo!.maturityRating!,
                      //       style: Styles.textStyle20,
                      //     ),
                      //     SizedBox(
                      //       width: 9,
                      //     ),
                      //     Text(
                      //       '(2390)',
                      //       style: Styles.textStyle16,
                      //     ),
                      //   ],
                      // ),
                      Text(
                        ' ${book.volumeInfo!.publishedDate!}',
                        style: Styles.textStyle16White,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
